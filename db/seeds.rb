User.destroy_all
u0 = User.create :email => "kevin@email.com", :name => "Kevn", :password => "chicken", admin: false
u1 = User.create :email => "paul@email.com", :name => "Luap", :password => "chicken", admin: false
u2 = User.create :email => "carl@email.com", :name => "Carl", :password => "chicken", admin: false
u3 = User.create :email => "team@email.com", :name => "Team", :password => "chicken", admin: true
puts "#{ User.count } users created."
