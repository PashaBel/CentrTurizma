class AuthorizationController < ApplicationController
  layout 'application'

  # исключаем отображение страницы авторизации из проверки на то залогирован ли кто нибудь или нет дабы не зациклить страницу
  skip_before_action :require_login


  def index
    reset_session
  end

  def logon
    user = User.where(user_name: params[:userName], user_password: params[:userPassword]).first
    if user
      session[:current_user_id] = user.id
      redirect_to :controller => 'home', :action => 'index'
    else
      redirect_to 'https://youtu.be/qn9FkoqYgI4'
      #render plain: "Вы кто такие, я вас не знаю, идите ... отсюда"
    end
  end

end
