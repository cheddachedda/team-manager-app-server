require 'httparty'
require 'nokogiri'

def scrape_games
  url = 'https://citysidesports.com/fixtures.php?getcomp=9'
  unparsed_page = HTTParty.get(url)
  parsed_page = Nokogiri::HTML(unparsed_page.body)

  # CSS class found by inspecting the url's source
  results_div = parsed_page.css('.tab-content').last
  rounds_divs = results_div.css('.tab-pane')

  games = []

  # Each round is contained within a <div>
  rounds_divs.each do |round_div|
    # The round name can be found in the div's id
    round = round_div.attributes["id"].value.split('-')[1] # Returns a string
    round_no = case round
    when 'SF'
      6
    when 'GF'
      7
    else
      round.to_i
    end

    # Each game per round is contained within a <tr>
    round_div.css('tr').each do |game_row|
      columns = game_row.css('td').map{ |col| col.text.strip }

      # If the first column says 'BYES:...', create games for all bye teams
      if columns[0].include?('BYES: ')
        if columns[0] != 'BYES: N/A'
          games << {
            round_no: round_no,
            home: columns[0].split("BYES: ").drop(1)[0],
            status: 'BYE'
          }
        end
      else
        home = Team.find_by(name: columns[3])
        if home.nil?
          home = Team.create(name: columns[3], division: 'Netball')
          puts "Created Team: #{ home.name }"
        end

        away = Team.find_by(name: columns[6])
        if away.nil?
          away = Team.create(name: columns[6], division: 'Netball')
          puts "Created Team: #{ away.name }"
        end

        # Parse datetime from date string and time string (in 12hr format)
        date = columns[0]
        time = columns[1]
        hours = (time.split(':').first.to_i + 12).to_s
        minutes = time.split(':').last
        datetime = [date, ' ', hours, ':', minutes, ' ', '+11'].join().to_datetime

        games << {
          round_no: round_no,
          division: 'Netball',
          datetime: datetime,
          venue: columns[2],
          home_id: home.id,
          home_score: columns[4].to_i,
          away_id: away.id,
          away_score: columns[7].to_i,
        }
      end
    end
  end
  games
end

scrape_games.each do |game|
  new_game = Game.create game
  puts "Created Game: #{ new_game[:home_id] } v #{ new_game[:away_id] }"

  home_team = Team.find(new_game.home_id)
  home_team.games << new_game
  puts "Associated Game: R#{ new_game[:round] } to Team: #{ home_team[:name] }"

  away_team = Team.find(new_game.away_id)
  unless away_team.nil?
    away_team.games << new_game
    puts "Associated Game: R#{ new_game[:round] } to Team: #{ away_team[:name] }"
  end
end

puts "#{ Game.count } #{ 'game'.pluralize Game.count } created"
puts "#{ Team.count } #{ 'team'.pluralize Team.count } created"
