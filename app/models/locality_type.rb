class LocalityType  < ApplicationRecord
  validates :short_name, presence: { message: "Поле Названия типа населенного пункта не может быть пустым!!!" }
  validates :short_name, uniqueness: { messege: "Такой пользователь тип населенного пункта уже существует!!!"}
end