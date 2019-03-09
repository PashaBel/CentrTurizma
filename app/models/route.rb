class Route < ApplicationRecord
  belongs_to :trip
  belongs_to :point
end