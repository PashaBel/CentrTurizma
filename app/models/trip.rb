class Trip < ApplicationRecord
  belongs_to :institution
  has_many :routes

  validates :number_order, presence: { message: "Поле 'Номер приказа' не может быть пустым!!!" }
  validates :date_order, presence: { message: "Поле 'Дата приказа' не может быть пустым!!!" }
  validates :date, presence: { message: "Поле 'Дата поездки' не может быть пустым!!!" }
end