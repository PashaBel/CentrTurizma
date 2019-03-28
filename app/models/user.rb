class User < ApplicationRecord
  belongs_to :center
  validates :user_name, presence: { message: "Поле имя пользователя не может быть пустым!!!" }
  validates :user_password, confirmation: { message: "Введенные пароли не совпадают!!!" }
  #validates :user_password_confirmation, presence: { message: "Подтвердите пожалуйста введенный Вами пароль!!!" }
  validates :center_id, presence: { message: "Необходимо выбрать центр туризма или отдел образования!!!" }
end
