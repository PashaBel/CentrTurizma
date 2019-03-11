class HomeController < ApplicationController
  def index
      @links = []
      @links << {name: 'Управление', controller: 'user'} if current_user.is_admin?
  end
end