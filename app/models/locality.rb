class Locality < ApplicationRecord
  belongs_to :locality_type

  #validates :name, presence: { message: "Поле 'Название населенного пункта' не может быть пустым!!!" }
end