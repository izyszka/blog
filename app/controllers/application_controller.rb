class ApplicationController < ActionController::Base
  def current_user
    #zapisz zmienna, chyba, ze juz istnieje
    @current_user ||= User.find(session[:user_id]) if user_signed_in?
  end
  #daje dostep z widokow
  helper_method :current_user

  def user_signed_in?
    session[:user_id].present?
  end
  helper_method :user_signed_in?
end
