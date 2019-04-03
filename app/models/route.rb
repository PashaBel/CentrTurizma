class Route < ApplicationRecord
  belongs_to :trip
  belongs_to :point

  validates :name, presence: { message: "Поле 'Наименование маршрута' не может быть пустым!!!" }
end