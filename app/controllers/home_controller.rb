class HomeController < ApplicationController
  def index
    if current_user.is_admin?
      array = [['name','Управление пользователями'], ['controller','user']]
      @links = hash[*array.flatten]
    else
      @links = ''
    end
  end
end