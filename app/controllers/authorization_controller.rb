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
      render plain: "Вы кто такие, я вас не знаю, идите ... отсюда"
    end
  end

  # "Удаляем" логин (при выходе пользователя)
  def destroy
    # Убираем id пользователя из сессии
    session.delete(:current_user_id)
    # Очистить мемоизированного текущего пользователя
    @_current_user = nil
    redirect_to root_url
  end
end
