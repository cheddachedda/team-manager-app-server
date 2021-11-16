teams = [
  'Adelaide Crows',
  'Brisbane Lions',
  'Carlton',
  'Collingwood',
  'Essendon',
  'Fremantle',
  'Geelong Cats',
  'Gold Coast Suns',
  'GWS Giants',
  'Hawthorn',
  'Melbourne',
  'North Melbourne',
  'Port Adelaide',
  'Richmond',
  'St Kilda',
  'Sydney Swans',
  'West Coast Eagles',
  'Western Bulldogs',
]

teams.each do |team|
  Team.create :name => team, :division => 'AFL'
end

puts "#{ Team.count } #{ 'team'.pluralize Team.count } created"
