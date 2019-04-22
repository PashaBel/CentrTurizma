class Institution < ApplicationRecord
  belongs_to :center
  has_many :trips

=begin
  validates :name, presence: { message: "Поле 'Наименоание школы' не может быть пустым!!!" }
  validates :name, uniqueness: { messege: "Такая школа уже существует, выбирете другое наименование!!!"}
  validates :email, presence: { message: "Поле 'Электронная почта' не может быть пустым!!!" }
  validates :email, uniqueness: { messege: "Такая электронная почта уже существует, выбирете другое наименование!!!"}
=end
end