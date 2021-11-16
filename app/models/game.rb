class Game < ApplicationRecord
  has_many :users
  has_many :teams

  def complete?
    datetime < DateTime.now
  end

  def date
    datetime.strftime('%a %d %b')
  end

  def time
    datetime.strftime('%l:%M%P')
  end

  def home
    Team.find(home_id)
  end

  def away
    Team.find(away_id)
  end

  def matchup
    "#{ home.name } v #{ away.name }"
  end

  def winner
    if home_score > away_score
      Team.find home_id
    elsif away_score > home_score
      Team.find away_id
    end
  end

  def loser
    if home_score < away_score
      Team.find home_id
    elsif away_score < home_score
      Team.find away_id
    end
  end

  def draw?
    complete? && home_score == away_score
  end

  def win? team
    if home == team || away == team && complete?
       team == winner
    else
      nil
    end
  end

  def loss? team
    if home == team || away == team && complete?
       team == loser
    else
      nil
    end
  end

  def home_users
    Team.find(home_id).users
  end

  def away_users
    Team.find(away_id).users
  end

end
