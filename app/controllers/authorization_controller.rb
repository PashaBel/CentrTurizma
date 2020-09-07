class AuthorizationController < ApplicationController
  layout 'application'

  # исключаем отображение страницы авторизации из проверки на то залогирован ли кто нибудь или нет дабы не зациклить страницу
  skip_before_action :require_login

  # This file should contain all the record creation needed to seed the database with its default values.
  # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
  #
  # Examples:
  #
  #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
  #   Character.create(name: 'Luke', movie: movies.first)

  # This file should contain all the record creation needed to seed the database with its default values.
  # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
  #
  # Examples:
  #
  #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
  #   Character.create(name: 'Luke', movie: movies.first)




  def index
    reset_session
  end

  def logon

    user = User.where(user_name: params[:userName], user_password: params[:userPassword]).first
    if user
      session[:current_user_id] = user.id
      redirect_to controller: :home, action: :index
    else
      redirect_to 'https://youtu.be/qn9FkoqYgI4'
      #render plain: "Вы кто такие, я вас не знаю, идите ... отсюда"
    end
  end

end
