class HomeController < ApplicationController
  def index
      @links = []
      @links << {name: 'Управление пользователями', controller: 'users'} if current_user.is_admin?
  end
end