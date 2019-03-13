class UserController < ApplicationController

  before_action :require_admin

  def index
   if current_user.is_admin?
     @hash = User.all.map{ |usr| {id: usr.id, name: usr.user_name, password: usr.user_password, centr_name: usr.center&.name, type: usr.is_admin? ? 'Admin' : 'User'} }
   else
     redirect_to controller: :home, action: :index
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
      flash[:notice] = 'Пользователь успешно создан'
      redirect_to controller: :user, action: :index
    else
      flash.now[:alert] = 'Пользователь не создан'
      render action: 'new'
      return
    end
  end

  def edit
    @edit_user = User.find_by.map(id: params[:id]){ |usr| {name: usr.user_name, password: usr.user_password }}

  end

  def destroy
    destroy_user = User.find_by(id: params[:id])
    destroy_user.destroy
    if destroy_user
      flash[:notice] = 'Пользователь успешно удален'
      redirect_to controller: :user, action: :index
    end
  end

  private

  def require_admin
    unless current_user.is_admin?
      redirect_to controller: :home, action: :index
    end
  end

end