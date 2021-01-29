class Game < ActiveRecord::Base

    # belongs_to :user
    # has_many :reviews, :users
    has_many :reviews
    has_many :users, through: :reviews

    # def user
    #     User.find(self.user_id)
    # end
end
