User.destroy_all
u0 = User.create :email => "kevin@email.com", :name => "Kevn", :captain => 'false', :password => "chicken", password_confirmation: "chicken", admin: false
u1 = User.create :email => "paul@email.com", :name => "Luap", :captain => 'false', :password => "chicken", password_confirmation: "chicken", admin: false
u2 = User.create :email => "carl@email.com", :name => "Carl", :captain => 'false', :password => "chicken", password_confirmation: "chicken", admin: false
u3 = User.create :email => "team@email.com", :name => "Team", :captain => 'false', :password => "chicken", password_confirmation: "chicken", admin: true
puts "#{ User.count } users created."
