class UsersController < ApplicationController

  before_action :require_admin

  def index
    @edit_user = {name: '', password: '', centr_id: 1 }
    @hash = User.all.map{ |usr| {id: usr.id, name: usr.user_name, password: usr.user_password, centr_name: usr.center&.name, type: usr.is_admin? ? 'Администратор' : 'Пользователь'} }
  end

  def new
    @view_err_message = []
    @center_list = Center.all.map{|center| [center.name, center.id]}
    @edit_user = {name: '', password: '', centr_id: 1 }
  end

  def create
    @view_err_message = []
    new_user = User.create(user_name: params[:name], user_password: params[:password], user_password_confirmation: params[:confirm_password], center_id: params[:center_id])
    msg = new_user.errors.messages
    msg.each do |errmsg, errmsg_value|
      errmsg_value.each do |display|
        @view_err_message << display
      end
    end
    if @view_err_message != []
      @center_list = Center.all.map{|center| [center.name, center.id]}
      @edit_user = {name: params[:name], password: params[:password], centr_id: params[:center_id] }
      render action: 'new' and return
    else
      redirect_to controller: :users, action: :index
    end
  end

  def edit
    @view_err_message = []
    usr = User.find_by(id: params[:id])
    @edit_user = { id: usr.id, name: usr.user_name, password: usr.user_password, centr_id: usr.center_id }
    @center_list = Center.all.map{|center| [center.name, center.id]}
  end

  def update
=begin
    if params[:password] == params[:confirm_password]
      params[:password]
    else
      flash.now[:alert] = 'Пароли не совпадают'
      @center_list = Center.all.map{|center| [center.name, center.id]}
      render action: 'new' and return
    end
=end
    @view_err_message = []
    usr = User.find_by(id: params[:id])
    usr.update(user_name: params[:name], user_password: params[:password], user_password_confirmation: params[:confirm_password], center_id: params[:center_id])
    msg = usr.errors.messages
    msg.each do |errmsg, errmsg_value|
      errmsg_value.each do |display|
        @view_err_message << display
      end
    end
    if @view_err_message != []
      @center_list = Center.all.map{|center| [center.name, center.id]}
      @edit_user = {id: params[:id], name: params[:name], password: params[:password], centr_id: params[:center_id] }
      render action: 'edit' and return
    else
      flash[:notice] = 'Пользователь успешно изменен'
      redirect_to controller: :users, action: :index
    end
  end

  def destroy
    destroy_user = User.find_by(id: params[:id])
    destroy_user.destroy
    flash[:notice] = 'Пользователь успешно удален'
    redirect_to controller: :users, action: :index
  end

  private

  def require_admin
    unless current_user.is_admin?
      redirect_to controller: :home, action: :index
    end
  end

end