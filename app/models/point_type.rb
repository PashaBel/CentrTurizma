class PointType < ApplicationRecord
  validates :name, presence: { message: "Поле 'Тип объекта посещения' не может быть пустым!!!" }
  validates :name, uniqueness: { messege: "Такой тип объекта посещения уже существует, выбирете другое имя!!!"}
end