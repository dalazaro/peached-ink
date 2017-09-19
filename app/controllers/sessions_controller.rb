class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    # confirm that email/password combination is correct
    @user = User.confirm(user_params)
    if @user
      login(@user)
      flash[:notice] = 'Successfully logged in!'
      redirect_to collections_path
    else
      flash[:error] = 'Incorrect email or password. Please try again.'
      redirect_to login_path
    end
  end

  def destroy
    logout
    flash[:notice] = 'Successfully logged out.'
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:email_address, :password)
  end

end
