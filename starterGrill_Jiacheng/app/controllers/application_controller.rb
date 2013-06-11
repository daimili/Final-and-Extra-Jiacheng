class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :signed_in?
  helper_method :current_user
  helper_method :admin?
  def signed_in?
    return current_user.present?
  end

  def current_user
    return @current_user ||= User.find_by_id(session[:user_id])
  end

  def admin?
    return (current_user.name == 'administrator')
  end
end
