class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by({"email" =>params["email"]})
    if 
      @user && BCrypt::Password.new(@user["password"] == params["password"])
      session["user_id"] = @user["id"]
      flash["notice"] = "You've logged in Successfully!"
      redirect_to "/places"
    else
      flash["notice"] = "Invalid password or email."
      redirect_to "/login"
    end
  end

  def destroy
  end
end
  