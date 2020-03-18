class Tea < ApplicationRecord
    has_many :tea_ingredients
    has_many :ingredients ,through: :tea_ingredients

    validates :name, presence: true
    validates :price, presence: true
end
