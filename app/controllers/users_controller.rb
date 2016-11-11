class UsersController < ApplicationController

  before_action :confirm_logged_in, :except => [:new, :login, :attempt_login, :logout, :create]
  before_action :logged_in, :only => :login

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "User Successfuly Created"
      redirect_to(:root)
    else
      render('new')
    end
  end

  def edit
  end

  def delete
  end

  def attempt_login
    if params[:username].present? && params[:password].present?
      found_user = User.where(:username => params[:username]).first
      if found_user
        authorized_user = found_user.authenticate(params[:password])
      end
    end

    if authorized_user
      session[:user_id] = authorized_user.id
      flash[:notice] = "You are now logged in."
      redirect_to(forms_path)
    else
      flash.now[:notice] = "Invalid username/password combination."
      render('login')
    end
  end

  def logout
    session[:user_id] = nil
    flash[:notice] = 'Logged out'
    redirect_to(:root)
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

  def logged_in
    if session[:user_id]
      redirect_to(forms_path)
    end
  end
end
