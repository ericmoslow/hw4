class ApplicationController < ActionController::Base
  before_action :set_current_user
  def set_current_user
    @current_user = User.find_by(id: session["user_id"])
  end

  def authenticate_user
      if @current_user.nil?
          flash["notice"] = "To view this content you must be logged in to an account"
          redirect_to "/login"
      end
  end
end
