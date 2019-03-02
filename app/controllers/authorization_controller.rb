class AuthorizationController < ApplicationController
  layout 'application'
  def index
  end

  def logon
    user = User.where(user_name: params[:userName], user_password: params[:userPassword]).first
    if user
      render plain: "Добро пожаловать"
    else
      render plain: "Вы кто такие, я вас не знаю, идите ... отсюда"
    end
  end
end
