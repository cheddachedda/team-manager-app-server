g0 = Game.create :venue => "The Colosseum", :time => DateTime.new(85,5,12,9), :homescore => 4, :awayscore => 6, :home_id => 0, :away_id => 1, :status => "Game Ended", :round => 0, :division => 0, :homevotes => 0, :awayvotes => 0, :homebalance => 0, :awaybalance => 0, :homedrinks_id => 0, :awaydrinks_id => 0, :homeavailible_id => 0, :awayavailible_id => 0
g1 = Game.create :venue => "The Moon", :time => DateTime.new(2225,4,5,10), :homescore => 6, :awayscore => 4, :home_id => 1, :away_id => 0, :status => "Game Ended", :round => 0, :division => 0, :homevotes => 0, :awayvotes => 0, :homebalance => 0, :awaybalance => 0, :homedrinks_id => 0, :awaydrinks_id => 0, :homeavailible_id => 0, :awayavailible_id => 0
g2 = Game.create :venue => "My Backyard", :time => DateTime.new(2025,10,10,8), :homescore => 2, :awayscore => 1, :home_id => 0, :away_id => 2, :status => "Game Ended", :round => 0, :division => 0, :homevotes => 0, :awayvotes => 0, :homebalance => 0, :awaybalance => 0, :homedrinks_id => 0, :awaydrinks_id => 0, :homeavailible_id => 0, :awayavailible_id => 0
g3 = Game.create :venue => "T̴̨͕͙͈̞͂̎̑͌Ḩ̵̡͇̼̘̇͗͐̿͂Ė̴̤̯͆͊̋̕͠ ̷̨̼̹̭͌V̶͖̂̈̂Ơ̶͇̭̗̤̭̟̓̔͒́̇̇I̴͚̙̭͔̟̽̄̌̈́͘D̴͖̘̲̠͗͑̊̽͠", :time => DateTime.new(9999,9,9,9), :homescore => 9, :awayscore => 9, :home_id => 2, :away_id => 1, :status => "I̸͍̟̲̩͇͈̝͆͝T̷̮̯͔̤̎̓̿̑̓̿̕S̵̹͈̮̻͙͑̊͠͝ ̵̜̣̘͖͓͉̄̊̐ͅC̷̜̲͇̻̞̃̆̈́͜Ǫ̶̨̹͚̮̭̅͒͂̈́͛M̸͕̆̒̾́͑̚I̵̝͎͇̪̤̔͊̉N̷̨̈́͒̊̒͌̈Ģ̷̸͕̋͐͛̀̊͊̌̑̀ͅ", :round => 0, :division => 0, :homevotes => 0, :awayvotes => 0, :homebalance => 0, :awaybalance => 0, :homedrinks_id => 0, :awaydrinks_id => 0, :homeavailible_id => 0, :awayavailible_id => 0
puts "#{ Game.count } games created."

t0 = Team.create :name => "Blue", :division => 0, :captain_id => 0
t1 = Team.create :name => "Red", :division => 0, :captain_id => 1
t2 = Team.create :name => "Green", :division => 0, :captain_id => 4
puts "#{Team.count} teams created."
