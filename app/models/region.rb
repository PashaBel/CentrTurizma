class Region < ApplicationRecord
=begin
  validates :name, presence: { message: "Поле 'Название области' не может быть пустым!!!" }
  validates :name, uniqueness: { messege: "Такая Область уже существует!!!"}
=end
end