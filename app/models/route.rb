class Route < ApplicationRecord
  belongs_to :trip
  has_one :points
end