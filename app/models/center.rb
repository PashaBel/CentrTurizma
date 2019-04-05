class Center < ApplicationRecord
  has_one :user
  belongs_to :district
  has_many :institutions

=begin
  validates :name, presence: { message: "Поле 'Наименование центра' не может быть пустым!!!" }
  validates :name, uniqueness: { messege: "Такое наименование центра уже существует, пожалуйста введите другое!!!"}
  validates :email, presence: { message: "Поле 'Электронная пота' не может быть пустым!!!" }
=end
end