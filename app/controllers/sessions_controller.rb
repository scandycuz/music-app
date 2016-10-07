class SessionsController < ApplicationController

  def new
    render :signin
  end

  # login
  def create
    user = User.find_by_credentials(
      params[:user][:email],
      params[:user][:password]
    )

    if user
      login(user)
      redirect_to bands_url
    else
      render :signin
      flash.now[:errors] = "Incorrect email and/or password"
    end
  end

  # logout
  def destroy
    logout_user!
    redirect_to new_session_url
  end
end
