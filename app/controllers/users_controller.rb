class UsersController < ApplicationController

  before_action :require_admin

  def index
    @edit_user = {}
    @hash = User.all.map { |usr| {id: usr.id, name: usr.user_name, password: usr.user_password, centr_name: usr.center&.name, type: usr.is_admin? ? 'Администратор' : 'Пользователь'} }
  end

  def new
    @view_err_message = []
    @center_list = Center.all.map{|center| [center.name, center.id]}
    @edit_user = {}
  end

  def create
    new_user = User.create(user_name: params[:name], user_password: params[:password], user_password_confirmation: params[:confirm_password], center_id: params[:center_id])
    err_messages = new_user.errors.messages.values.flatten

    if err_messages.any?
      @center_list = Center.all.map { |center| [center.name, center.id] }
      @edit_user = {name: params[:name], password: params[:password], centr_id: params[:center_id]}
      flash.now[:error] = err_messages
      render action: 'new'
    else
      redirect_to controller: :users, action: :index
    end
  end

  def edit
    #@view_err_message = []
    usr_edit = User.find_by(id: params[:id])
    @edit_user = { id: usr_edit.id, name: usr_edit.user_name, password: usr_edit.user_password, centr_id: usr_edit.center_id }
    @center_list = Center.all.map{|center| [center.name, center.id]}
  end

  def update
    #@view_err_message = []
    usr_edit = User.find_by(id: params[:id])
    usr_edit.update(user_name: params[:name], user_password: params[:password], user_password_confirmation: params[:confirm_password], center_id: params[:center_id])
    err_messages = usr_edit.errors.messages.values.flatten

    if err_messages.any?
      @center_list = Center.all.map { |center| [center.name, center.id] }
      @edit_user = {id: params[:id], name: params[:name], password: params[:password], centr_id: params[:center_id] }
      flash.now[:error] = err_messages
      render action: 'edit'
    else
      redirect_to controller: :users, action: :index
    end
=begin
    err_messages.each do |errmsg, errmsg_value|
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
=end
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
