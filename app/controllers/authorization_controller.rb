class AuthorizationController < ApplicationController
  layout 'application'
  def index
  end

  def logon
    user = User.where(user_name: params[:userName], user_password: params[:userPassword]).first
    if user
      session[:current_user_id] = user.id
      session[:UserName] = user.user_name
      redirect_to home/index
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
