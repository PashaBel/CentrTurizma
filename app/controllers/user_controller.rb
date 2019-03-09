class UserController < ApplicationController

  def index
    current_user.is_admin?
  end

  def create

  end

  def edit

  end

  def delete

  end
end