# Create Users
[ 'Admin', 'Joel', 'Pat', 'Rowena' ].each do |user|
  new_user = User.create(
    :name => user,
    :email => "#{ user.downcase }@ga.co",
    :password => 'chicken',
    :password_confirmation => 'chicken',
    :team_id => user == 'Admin' ? nil : Team.find_by(:name => 'Netball Regretball').id,
    :admin => user == 'Admin',
    :captain => user == 'Joel'
  )
  puts "Created User #{ new_user.id } #{ new_user.name }"
end
