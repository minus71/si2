class HomeController < ApplicationController
  def index
    @user_name = session[:user_name]
    
  end
  def login
    user = params[:user]
    user_name=nil
    password = nil
    if user
      user_name=user[:account_name]
      password = user[:password]
    end
    @user = User.login(user_name,password)
    session[:user]=@user
    if @user
      flash[:notice]="Welcome #{@user.account_name}"
      session[:user_name]=@user.account_name
      redirect_to root_path
    else
      flash.now[:notice]="Wrong user or password"
    end
  end
end
