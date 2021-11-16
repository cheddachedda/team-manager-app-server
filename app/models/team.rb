class Team < ApplicationRecord
  has_many :users
  has_and_belongs_to_many :games

  def wins
    self.games.filter{ |f| f.win? self}.count
  end

  def draws
    self.games.filter{ |f| f.draw}.count
  end

  def losses
    self.games.filter{ |f| f.loss? self}.count
  end

  def games_played
    self.wins + self.draws + self.losses
  end 

end
