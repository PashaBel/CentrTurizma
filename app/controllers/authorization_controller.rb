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

  require 'csv'


   filecenters = '/home/pbelevich/Desktop/Centers.csv'

  filecentersarray = CSV.foreach(filecenters, headers: true).map(&:to_h)

  filecentersarray.each do |elem|
    center = elem['rayon']
    var
  end

  Center.create(name: 'Гродненский', district_id: '1', locality_id: '1', email: 'mail@mail.mail')

  User.create(user_name: 'BelPaK', user_password: '123', center_id: 1, is_admin: 1)
  User.create(user_name: 'Alex', user_password: '321', center_id: 1, is_admin: 1)




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
