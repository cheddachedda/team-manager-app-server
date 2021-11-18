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
    points_for = []
    games.filter do |g|
      if g.home == self
        points_for << g.home_score
      elsif g.away == self
        points_for << g.away_score
      end
    end
    points_for.sum
  end

  def points_against
    points_for = []
    games.filter do |g|
      if g.home == self
        points_for << g.away_score
      elsif g.away == self
        points_for << g.home_score
      end
    end
    points_for.sum
  end

  def games_played
    wins + losses
  end

  def points_percentage
    ((points_for.to_f / points_against) * 100).round(2)
  end

  def win_percentage
    ((wins + draws / 2).to_f / games_played * 100).round(2)
  end

  def league_position
    teams = Team.where(division: 'mon_mixed').sort_by { |t| [t.win_percentage, t.points_percentage] }.reverse
    teams.index(self) + 1
  end

end
