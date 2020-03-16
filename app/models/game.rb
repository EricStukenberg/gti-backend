class Game < ApplicationRecord
    has_many :users_games
    has_many :rounds
    has_many :users, through: :users_games
end
