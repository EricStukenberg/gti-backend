class User < ApplicationRecord
    attr_accessor :password
 
    def authenticate(plaintext_password)
      if BCrypt::Password.new(self.password_digest) == plaintext_password
        self
      else
        false
      end
    end

    has_secure_password
    validates :name, presence: true
    validates :name, uniqueness: true
    validates :email, presence: true
    validates :email, uniqueness: true

    has_many :friendships
    has_many :friends, :through => :friendships

    has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
    has_many :inverse_friends, :through => :inverse_friendships, :source => :user

    has_many :users_games
    has_many :games, through: :users_games

end
