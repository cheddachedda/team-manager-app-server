class Team < ApplicationRecord
  has_many :users
  has_and_belongs_to_many :games

end
