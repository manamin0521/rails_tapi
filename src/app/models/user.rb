class User < ApplicationRecord
    has_many :user_shops
    has_many :shops, through: :user_shops
end
