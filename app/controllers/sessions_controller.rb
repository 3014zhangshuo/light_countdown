class SessionsController < ApplicationController

  def create
    auth = request.env['omniauth.auth']
    @user = User.find_with_omniauth(auth)

    if user_signed_in?
      redirect_to root_path, notice: 'Already signed in'
    else
      self.current_user = @user
      redirect_to root_path, notice: 'User Sign In!'
    end
  end

  def destroy
    logout
    redirect_to root_path, notice: 'Signed out!'
  end
end
