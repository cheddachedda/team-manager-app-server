admin = User.create(
  name: 'Admin',
  email: 'admin@ga.co',
  password: 'chicken',
  password_confirmation: 'chicken',
  admin: true
)

users = [ 'Joel', 'Pat', 'Rowena' ]

users.each do |user|
  User.create(
    email: "#{ user.downcase }@ga.co",
    password: 'chicken',
    password_confirmation: 'chicken',
    name: user,
    team_id: Team.find_by(name: 'Netball Regretball').id,
    captain: user == 'Joel',
    balance: 0,
    fines: 0
  )
end

puts "#{ User.count } #{ 'user'.pluralize User.count } created"
