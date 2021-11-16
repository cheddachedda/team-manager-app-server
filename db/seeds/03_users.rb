admin = User.create(
  name: 'Admin',
  email: 'admin@ga.co',
  password: 'chicken',
  password_confirmation: 'chicken',
  admin: true
)

users = [ 'Joel', 'Pat', 'Rowena' ]

users.each do |user|
  new_user = User.create(
    email: "#{ user.downcase }@ga.co",
    password: 'chicken',
    password_confirmation: 'chicken',
    name: user,
    team_id: Team.find_by(name: 'Sydney Swans').id,
    captain: user == 'Joel',
    balance: 0,
    fines: 0
  )

  # Associate games to users
  new_user.team.games.each do |game|
    new_user.games << game
  end
end

puts "#{ User.count } #{ 'user'.pluralize User.count } created"
