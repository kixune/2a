class SessionsController < ApplicationController
  def new
  end

  def create
    rockhound = Rockhound.find_by(email: params[:session][:email].downcase)

    if rockhound && rockhound.authenticate(params[:session][:password])
     log_in rockhound
     params[:session][:remember_me] == '1' ? remember(rockhound) : forget(rockhound)
     redirect_to rockhound

    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
