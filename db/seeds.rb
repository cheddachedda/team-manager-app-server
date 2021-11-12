User.destroy_all
u0 = User.create :email => "kevin@email.com", :name => "Kevn", :password => "chicken"
u1 = User.create :email => "paul@email.com", :name => "Luap", :password => "chicken"
u2 = User.create :email => "carl@email.com", :name => "Carl", :password => "chicken"
puts "#{ User.count } users created."