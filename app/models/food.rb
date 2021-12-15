class Food < ApplicationRecord
    has_one_attached :image
    has_many :food_review, -> {order "created_at DESC"}
end
