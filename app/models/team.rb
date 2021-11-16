class Team < ApplicationRecord
  has_many :users
  has_and_belongs_to_many :games

  def wins
    self.games.filter{ |f| f.win? self}.count
  end

  def losses
    self.games.filter{ |f| f.loss? self}.count
  end

  def games_played
    self.wins + self.losses
  end

end
