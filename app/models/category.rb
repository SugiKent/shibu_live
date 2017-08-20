class Category < ApplicationRecord
  has_many :concert_category
  has_many :concerts, through: :concert_category
end
