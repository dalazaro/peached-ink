class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # root to: 'application#home'
  def home
    render('../views/home')
  end

end
