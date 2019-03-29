class User < ApplicationRecord
  belongs_to :center
  validates :user_name, presence: { message: "Поле 'Имя пользователя' не может быть пустым!!!" }
  validates :user_name, uniqueness: { message: "Пользователь с таким именем уже существует, пожалуйста введите другое имя пользователя!!!" }
  validates :user_password, uniqueness: { message: "Такой пароль уже выбран другим пользователем, введите пожалуйста другой пароль!!!" }
  validates :user_password, presence: { message: "Поле 'Пароль' не может быть пустым!!!" }
  validates :user_password, confirmation: { message: "Введенные пароли не совпадают!!!" }
  validates :user_password_confirmation, presence: { message: "Подтвердите пожалуйста введенный Вами пароль!!!" }
  validates :center_id, presence: { message: "Необходимо выбрать центр туризма или отдел образования!!!" }
end
