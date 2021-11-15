class User < ApplicationRecord
  validates :email, :presence => true, :uniqueness => true
  has_secure_password
  validates :name, presence: true
  belongs_to :team
  has_and_belongs_to_many :game
end
