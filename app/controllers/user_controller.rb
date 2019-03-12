class UserController < ApplicationController

  def index
   if current_user.is_admin?
     @hash = User.all.map{ |usr| {id: usr.id, name: usr.user_name, password: usr.user_password, centr_name: usr.center&.name, type: usr.is_admin? ? 'Admin' : 'User'} }
   else
     redirect_to :controller => 'home', :action => 'index'
   end
  end

  def new

  end

  def edit

  end

  def destroy

  end
end