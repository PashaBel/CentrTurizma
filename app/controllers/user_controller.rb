class UserController < ApplicationController

  def index
   if current_user.is_admin?
     @user = User.all
   else
     redirect_to :controller => 'home', :action => 'index'
   end
  end

  def create

  end

  def edit

  end

  def delete

  end
end