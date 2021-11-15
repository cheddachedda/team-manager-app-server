u0 = User.create :email => "kevin@email.com", :name => "Kevn", :team_id => 0, :captain => true, :password => "chicken", password_confirmation: "chicken", admin: true
u1 = User.create :email => "paul@email.com", :name => "Luap", :team_id => 1, :captain => true, :password => "chicken", password_confirmation: "chicken", admin: false
u2 = User.create :email => "carl@email.com", :name => "Carl", :team_id => 0, :captain => false, :password => "chicken", password_confirmation: "chicken", admin: false
u3 = User.create :email => "tim@email.com", :name => "Tim", :team_id => 1, :captain => false, :password => "chicken", password_confirmation: "chicken", admin: false
u4 = User.create :email => "tim1@email.com", :name => "Timmy", :team_id => 2, :captain => true, :password => "chicken", password_confirmation: "chicken", admin: false
u5 = User.create :email => "tom@email.com", :name => "Tommy", :team_id => 2, :captain => false, :password => "chicken", password_confirmation: "chicken", admin: false

puts "#{ User.count } #{ 'user'.pluralize User.count } created"
