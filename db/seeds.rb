User.destroy_all
u0 = User.create :email => "kevin@email.com", :name => "Kevn", :team_id => '0', :captain => 'false', :password => "chicken", password_confirmation: "chicken", admin: false
u1 = User.create :email => "paul@email.com", :name => "Luap", :team_id => '1', :captain => 'false', :password => "chicken", password_confirmation: "chicken", admin: false
u2 = User.create :email => "carl@email.com", :name => "Carl", :team_id => '2', :captain => 'false', :password => "chicken", password_confirmation: "chicken", admin: false
u3 = User.create :email => "team@email.com", :name => "Team", :team_id => '3', :captain => 'false', :password => "chicken", password_confirmation: "chicken", admin: true
puts "#{ User.count } users created."

Game.destroy_all
g0 = Game.create :venue => "The Colosseum", :time => DateTime.new(85,5,12,9), :homescore => 4, :awayscore => 6, :home_id => 0, :away_id => 0, :status => "Game Ended", :round => 0, :division => 0, :homevotes => 0, :awayvotes => 0, :homebalance => 0, :awaybalance => 0, :homedrinks_id => 0, :awaydrinks_id => 0, :homeavailible_id => 0, :awayavailible_id => 0
g1 = Game.create :venue => "The Moon", :time => DateTime.new(2225,4,5,10), :homescore => 4, :awayscore => 6, :home_id => 0, :away_id => 0, :status => "Game Ended", :round => 0, :division => 0, :homevotes => 0, :awayvotes => 0, :homebalance => 0, :awaybalance => 0, :homedrinks_id => 0, :awaydrinks_id => 0, :homeavailible_id => 0, :awayavailible_id => 0
g2 = Game.create :venue => "My Backyard", :time => DateTime.new(2025,10,10,8), :homescore => 4, :awayscore => 6, :home_id => 0, :away_id => 0, :status => "Game Ended", :round => 0, :division => 0, :homevotes => 0, :awayvotes => 0, :homebalance => 0, :awaybalance => 0, :homedrinks_id => 0, :awaydrinks_id => 0, :homeavailible_id => 0, :awayavailible_id => 0
g3 = Game.create :venue => "T̴̨͕͙͈̞͂̎̑͌Ḩ̵̡͇̼̘̇͗͐̿͂Ė̴̤̯͆͊̋̕͠ ̷̨̼̹̭͌V̶͖̂̈̂Ơ̶͇̭̗̤̭̟̓̔͒́̇̇I̴͚̙̭͔̟̽̄̌̈́͘D̴͖̘̲̠͗͑̊̽͠", :time => DateTime.new(85,5,12,9), :homescore => 4, :awayscore => 6, :home_id => 0, :away_id => 0, :status => "Game Ended", :round => 0, :division => 0, :homevotes => 0, :awayvotes => 0, :homebalance => 0, :awaybalance => 0, :homedrinks_id => 0, :awaydrinks_id => 0, :homeavailible_id => 0, :awayavailible_id => 0
puts "#{ Game.count } games created."