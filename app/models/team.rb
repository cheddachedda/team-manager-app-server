class Team < ApplicationRecord
  has_many :users
  has_and_belongs_to_many :games

  def wins
    games.filter{ |g| g.win? self }.count
  end

  def losses
    games.filter{ |g| g.loss? self }.count
  end

  def draws
    games.filter{ |g| g.draw? }.count
  end

  def points_for
  end

  def points_against
  end

  def games_played
    wins + losses
  end

end
