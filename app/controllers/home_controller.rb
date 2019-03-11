class HomeController < ApplicationController
  def index
    if current_user.is_admin?
      @user = User.all
    else

    end
  end
end