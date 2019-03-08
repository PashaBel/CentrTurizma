class Route < ApplicationRecord
  has_one :trip
  has_many :points
end