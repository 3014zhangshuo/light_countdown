class ApplicationController < ActionController::Base
  protect_from_forgery

  protected

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def user_signed_in?
    current_user.present?
  end

  def logout
    self.current_user = nil
  end

  helper_method :current_user, :user_signed_in?

  def current_user=(user)
    session[:user_id] = user.try(:id)
    @current_user = user
  end
end
