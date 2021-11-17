# Create Games
mon_mixed = [
  [ 1, "November 15 18:40 +11", "Clifton Hill Court 1", "STEVE HOLT!", 10, "Brunswick Nets", 12 ],
  [ 1, "November 15 18:40 +11", "Clifton Hill Court 2", "Just Horsin' Around", 8, "HOT AL & Friends", 3 ],
  [ 2, "November 15 19:00 +11", "Clifton Hill Court 1", "STEVE HOLT!", 9, "HOT AL & Friends", 9 ],
  [ 2, "November 15 19:00 +11", "Clifton Hill Court 2", "Just Horsin' Around", 6, "Brunswick Nets", 10 ],
  [ 1, "November 15 19:20 +11", "Clifton Hill Court 1", "Shantay We Play", 11, "Not Fast, Just Furious!", 9 ],
  [ 1, "November 15 19:20 +11", "Clifton Hill Court 2", "In balls we trust", 12, "SFindit Raisins", 5 ],
  [ 2, "November 15 19:40 +11", "Clifton Hill Court 1", "Shantay We Play", 12, "SFindit Raisins", 9 ],
  [ 2, "November 15 19:40 +11", "Clifton Hill Court 2", "In balls we trust", 14, "Not Fast, Just Furious!", 6 ],
  [ 1, "November 15 20:00 +11", "Clifton Hill Court 1", "Mustangs", 17, "Mind Roomers", 7 ],
  [ 1, "November 15 20:00 +11", "Clifton Hill Court 2", "B.O.C", 6, "Crimson Rims", 16 ],
  [ 2, "November 15 20:20 +11", "Clifton Hill Court 1", "Mustangs", 9, "Crimson Rims", 14 ],
  [ 2, "November 15 20:20 +11", "Clifton Hill Court 2", "B.O.C", 12, "Mind Roomers", 11 ],
  [ 1, "November 15 20:40 +11", "Clifton Hill Court 1", "Sugar Gliders", 5, "Net Zero", 11 ],
  [ 1, "November 15 20:40 +11", "Clifton Hill Court 2", "strike-rz", 7, "Mashed Potatoes", 1 ],
  [ 2, "November 15 21:00 +11", "Clifton Hill Court 1", "Sugar Gliders", 8, "Mashed Potatoes", 0 ],
  [ 2, "November 15 21:00 +11", "Clifton Hill Court 2", "strike-rz", 7, "Net Zero", 2 ]
]

mon_mixed.each do |game|
  new_game = Game.create(
    division: 'mon_mixed',
    round_no: game[0],
    datetime: game[1].to_datetime,
    venue: game[2],
    home_id: Team.find_by(name: game[3]).id,
    home_score: game[4],
    away_id: Team.find_by(name: game[5]).id,
    away_score: game[5]
  )

  home_team = Team.find(new_game.home_id)
  away_team = Team.find(new_game.away_id)

  puts "Created Game #{ new_game.id } #{ home_team.name } v #{ away_team.name }"

  home_team.games << new_game
  puts "Associated Game #{ new_game.id } to Team #{ home_team.name }"

  away_team.games << new_game
  puts "Associated Game #{ new_game.id } to Team #{ away_team.name }"
end

thu_mixed = [
  [ 1, "November 18 18:40 +11", "Clifton Hill Court 1", "Jaffas", "Crop Dusters" ],
  [ 1, "November 18 18:40 +11", "Clifton Hill Court 2", "Team TODD", "Grace and Frankie" ],
  [ 2, "November 18 19:00 +11", "Clifton Hill Court 1", "Jaffas", "Grace and Frankie" ],
  [ 2, "November 18 19:00 +11", "Clifton Hill Court 2", "Team TODD", "Crop Dusters" ],
  [ 1, "November 18 19:20 +11", "Clifton Hill Court 1", "Netball Regretball", "Toast" ],
  [ 1, "November 18 19:20 +11", "Clifton Hill Court 2", "Northside", "Net GainZ" ],
  [ 2, "November 18 19:40 +11", "Clifton Hill Court 1", "Netball Regretball", "Net GainZ" ],
  [ 2, "November 18 19:40 +11", "Clifton Hill Court 2", "Northside", "Toast" ],
  [ 1, "November 18 20:00 +11", "Clifton Hill Court 1", "Bunch of Spuds", "Spare Parts" ],
  [ 1, "November 18 20:00 +11", "Clifton Hill Court 2", "Disco Balls", "Neighbours 3" ],
  [ 2, "November 18 20:20 +11", "Clifton Hill Court 1", "Bunch of Spuds", "Neighbours 3" ],
  [ 2, "November 18 20:20 +11", "Clifton Hill Court 2", "Disco Balls", "Spare Parts" ],
  [ 1, "November 18 20:40 +11", "Clifton Hill Court 1", "Net on the beers", "Ball or Nothing" ],
  [ 1, "November 18 20:40 +11", "Clifton Hill Court 2", "Puddlemere United", "Too short for this sport" ],
  [ 2, "November 18 21:00 +11", "Clifton Hill Court 1", "Net on the beers", "Too short for this sport" ],
  [ 2, "November 18 21:00 +11", "Clifton Hill Court 2", "Puddlemere United", "Ball or Nothing" ]
]

thu_mixed.each do |game|
  new_game = Game.create(
    division: 'thu_mixed',
    round_no: game[0],
    datetime: game[1].to_datetime,
    venue: game[2],
    home_id: Team.find_by(name: game[3]).id,
    away_id: Team.find_by(name: game[4]).id,
  )

  home_team = Team.find(new_game.home_id)
  away_team = Team.find(new_game.away_id)

  puts "Created Game #{ new_game.id } #{ home_team.name } v #{ away_team.name }"

  home_team.games << new_game
  puts "Associated Game #{ new_game.id } to Team #{ home_team.name }"

  away_team.games << new_game
  puts "Associated Game #{ new_game.id } to Team #{ away_team.name }"
end
