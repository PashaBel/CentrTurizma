class District < ApplicationRecord
  belongs_to :region
  has_many :points

=begin
  validates :name, presence: { message: "Поле 'Название района' не может быть пустым!!!" }
  validates :name, uniqueness: { messege: "Такой район уже существует, выбирете другое название!!!"}
=end
end