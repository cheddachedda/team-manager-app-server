require 'httparty'
require 'pry'

HTTParty.get('https://fixturedownload.com/feed/json/afl-2021').each do |g|
  game = Game.create(
    :division => 'AFL',
    :round_no => g["RoundNumber"],
    :datetime => g["DateUtc"].to_datetime,
    :venue => g["Location"],
    :home_id => Team.find_by(name: g["HomeTeam"]).id,
    :away_id => Team.find_by(name: g["AwayTeam"]).id,
    :home_score => g["HomeTeamScore"],
    :away_score => g["AwayTeamScore"],
  )

  Team.find(game[:home_id]).games << game
  Team.find(game[:away_id]).games << game
end

puts "#{ Game.count } #{ 'game'.pluralize Game.count } created"
