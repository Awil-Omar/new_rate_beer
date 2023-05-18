class ApplicationController < ActionController::Base
  #current_user can be also accessed in views and controllers
  helper_method :current_user

  def current_user
    return nil if session[:user_id].nil?
    User.find(session[:user_id])
  end
end
