class Trip < ApplicationRecord
  belongs_to :institution
  has_many :routes
end