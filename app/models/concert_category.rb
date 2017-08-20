class ConcertCategory < ApplicationRecord
  belongs_to :concert
  belongs_to :category
end
