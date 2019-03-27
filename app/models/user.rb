class User < ApplicationRecord
  belongs_to :center
  validates :name, presence: { message: "Поле имя пользователя не может быть пустым!!!" }
  validates :password, confirmation: { message: "Введенные пароли не совпадают!!!" }
  validates :confirm_password, presence: { message: "Подтвердите пожалуйста введенный Вами пароль!!!" }
  validates :center_id, presence: { message: "Необходимо выбрать центр туризма или отдел образования!!!" }
end
