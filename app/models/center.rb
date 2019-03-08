class Center < ApplicationRecord
  has_one :user
  belongs_to :district
  has_many :institutions
end