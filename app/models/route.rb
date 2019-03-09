class Route < ApplicationRecord
  belongs_to :trip
  belongs_to :points
end