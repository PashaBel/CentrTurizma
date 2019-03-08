class Institution < ApplicationRecord
  belongs_to :center
  has_many :trips
end