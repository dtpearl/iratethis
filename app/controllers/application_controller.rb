class ApplicationController < ActionController::Base

  # Before any action is performed, call the fetch_user method
  before_action :fetch_user


  private

  def fetch_user
    # Search for a user by their user_id if we can find one in the session hash
    @current_user = User.find_by :id => session[:user_id] if session[:user_id].present?

    # Clear the session user_id if no user is found.
    session[:user_id] = nil unless @current_user.present?

  end

  def authorise_user
    redirect_to login_path unless @current_user.present?
  end
end
