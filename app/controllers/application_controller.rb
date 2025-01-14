﻿class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :require_login
  
  def require_login
    if !session[:user]  then
      flash[:must_login] = "Необходима ви е регистрация за да продължите!"
      redirect_to login_signin_path
    end
  end
end
