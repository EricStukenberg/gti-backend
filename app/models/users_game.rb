class UsersGame < ApplicationRecord
  belongs_to :user
  belongs_to :game
  has_many :users 
  has_many :games 
end
