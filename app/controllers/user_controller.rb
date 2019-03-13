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

  def create
    if params[:password] == params[:confirm_password]
      params[:password]
    else
      flash.now[:alert] = 'Пароли не совпадают'
      render action: 'new'
      return
    end
    new_user = User.create(user_name: params[:name], user_password: params[:password], center_id: params[:center_id])
    if new_user
      flash.now[:notice] = 'Пользователь успешно создан'
      redirect_to :controller => 'user', :action => 'index'
    else
      flash.now[:alert] = 'Пользователь не создан'
      render action: 'new'
      return
    end
  end

  def edit

  end

  def destroy

  end
end