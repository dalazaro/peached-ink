class UsersController < ApplicationController

  # get '/about', to: 'users#show', as: 'user'
  def show
    @user = User.first
  end

  # get '/users/:username/edit', to: 'users#edit', as: 'edit_user'
  def edit
    user = User.find_by username: params[:username]
    if !user || user.id != session[:user_id]
      flash[:error] = "You are not authorized to edit this information."
      redirect_to user_path
    else
      @user = User.find_by username: params[:username]
    end
  end

  # patch '/users/:username', to: 'users#update', as: 'update_user'
  def update
    user_params = params.require(:user).permit(:first_name, :last_name, :bio, :email_address, :artist_statement, :avatar)
    user = User.find_by username: params[:username]
    user.update_attributes(user_params)
    redirect_to user_path
  end

end
