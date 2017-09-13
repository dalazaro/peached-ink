class User < ApplicationRecord
  has_secure_password
  has_many :collections

  def self.confirm(params)
    @user = User.find_by({email_address: params[:email_address]})
    @user ? @user.authenticate(params[:password]) : false
  end

end
