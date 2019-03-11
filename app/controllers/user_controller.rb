class UserController < ApplicationController

  def index
   if current_user.is_admin?
     user = User.includes(:center)
     @hash = []
     user.each do |usr|
       if usr.is_admin == true
         @hash <<{usr_name: usr.user_name, usr_password: usr.user_password, usr_centr_name: usr.center.name, usr_type: 'Admin'}
       else
         @hash <<{usr_name: usr.user_name, usr_password: usr.user_password, usr_centr_name: usr.center.name, usr_type: 'User'}
       end
     end
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