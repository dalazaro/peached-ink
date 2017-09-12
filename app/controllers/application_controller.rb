class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # method for splash page
  def splash
    render('../views/home')
  end

end
