class Game < ApplicationRecord
  has_many :users
  has_many :teams

  def round
      # case self.round_id
      # when 24
      #   'FW1'
      # when 25
      #   'SF'
      # when 26
      #   'PF'
      # when 27
      #   'GF'
      # else
      #   self.round_id.to_s
      # end
    end

    # date links to games db
    def date
      datetime.strftime('%a %d %b')
    end
    # time links to games db
    def time
      datetime.strftime('%l:%M%P')
    end
    # links to games db
    def home_id
      Team.find (home_id).name
    end
    # links to games db
    def away_id
      Team.find (away_id).name
    end
    # links to teams db
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


    def home_users
      Team.find (home).users
    end

    def away_users
      Team.find (away).users
    end

    def draw?
      status == 'Completed' && home_score == away_score
    end

    def win? team
      if status != 'Completed'
         nil
      else
         team == winner
      end
    end

    def loss? team
      if status != 'Completed'
         nil
      else
         team == loser
      end
    end


end
