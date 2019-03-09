class ApplicationController < ActionController::Base
  private

  # Находим пользователя с ID, хранящимся в сессии с ключом
  # :current_user_id Это обычный способ обрабатывать вход пользователя
  # в приложении на Rails; вход устанавливает значение сессии, а
  # выход убирает его.
  def current_user
    @_current_user ||= session[:current_user_id] &&
        User.find_by(id: session[:current_user_id])
  end
end
