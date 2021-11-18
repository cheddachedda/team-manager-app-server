teams = Team.all

teams.each do |team|
  ['Matt', 'Stephen', 'Dean', 'Dan', 'Pat', 'Joel', 'Rowena'].each do |user|
    new_user = User.create(
      :name => user,
      :email => "#{ user.downcase }@#{team.id}.co",
      :password => 'chicken',
      :password_confirmation => 'chicken',
      :team_id => user == 'Admin' ? nil : team.id,
      :admin => user == 'Admin',
      :captain => user == 'Joel'
    )
    puts "Created User #{ new_user.id } #{ new_user.name }"
  end
end
