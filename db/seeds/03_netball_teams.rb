teams = {
  mon_mixed: [
    "strike-rz",
    "In balls we trust",
    "Crimson Rims",
    "Brunswick Nets",
    "Shantay We Play",
    "Mustangs",
    "Sugar Gliders",
    "Net Zero",
    "Just Horsin' Around",
    "B.O.C",
    "STEVE HOLT!",
    "HOT AL & Friends",
    "Mind Roomers",
    "Not Fast, Just Furious!",
    "SFindit Raisins",
    "Mashed Potatoes"
  ],
  thu_mixed: [
    "Too short for this sport",
    "Crop Dusters",
    "Bunch of Spuds",
    "Grace and Frankie",
    "Ball or Nothing",
    "Toast",
    "Puddlemere United",
    "Net GainZ",
    "Team TODD",
    "Disco Balls",
    "Northside",
    "Netball Regretball",
    "Net on the beers",
    "Jaffas",
    "Neighbours 3",
    "Spare Parts"
  ]
}

# Create Teams
teams.keys.each do |division|
  teams[division].each do |team|
    new_team = Team.create(
      :name => team,
      :division => division
    )
    puts "Created Team #{ new_team.id } #{ new_team.name }"
  end
end
