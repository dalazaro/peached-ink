class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionsHelper

  # root to: 'application#home'
  def home
    render('../views/application/home')
  end

end
