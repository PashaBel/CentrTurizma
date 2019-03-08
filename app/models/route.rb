class Route < ApplicationRecord
  belongs_to :trip
  has_many :points
end