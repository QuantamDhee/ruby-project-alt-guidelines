class User < ActiveRecord::Base

    has_many :reviews
    has_many :games, through: :reviews
    # has_many :reviews, through: :games

    # def games
    #     # Game.all.select{|game| game.user_id == self.id}
    #     Game.where(user_id: self_id)
    # end

end