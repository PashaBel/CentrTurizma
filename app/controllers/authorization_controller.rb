class AuthorizationController < ApplicationController
  layout 'application'
  skip_before_action :require_login

  def index
    reset_session
  end

  def logon
    user = User.where(user_name: params[:userName], user_password: params[:userPassword]).first
    if user
      session[:current_user_id] = user.id
      session[:UserName] = user.user_name
      session[:UerTypeId] = user.user_type_id
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
    redirect_to :controller => 'authorization', :action => 'index'
  end
end
