class SessionsController < ApplicationController
  def create

    @user = User.find_or_create_from_auth(request.env['omniauth.auth'])
    if @user
      session[:user_id] = @user.id
      redirect_to home_path, :notice => "Signed in!"
    else
      redirect_to root_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end

  def update
    user = User.find(params[:x])
  end
end
