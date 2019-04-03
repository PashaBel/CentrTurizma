class Point < ApplicationRecord
  belongs_to :point_type
  belongs_to :district

  validates :name, presence: { message: "Поле 'Наименование объекта посещения' не может быть пустым!!!" }
  validates :name, uniqueness: { messege: "Такой объект уже существует, выбирете другое имя!!!"}
end