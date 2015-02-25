class AccessController < ApplicationController
  before_action :prevent_login_signup, only: [:signup, :login]



  def attempt_login
    if params[:username].present? && params[:password].present?
      found_user = User.where(username: params[:username]).first
      if found_user

        authorized_user = found_user.authenticate(params[:password])
      
        if authorized_user
          redirect_to home_path, flash: {warning: "LOGGED IN."}
        else
          redirect_to wrong_path
        end
      end
    end
  end

  def signup
    @user = User.new

    render :signup
  end

  # def wrong_login
  #   redirect_to wrong_path
  # end

  def create
     @user = User.create(password_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to home_path, flash: { warning: "You are now part of the nsa." }
    else
      
      render :signup, flash: { warning: "Need to enter a username." }
    end
  

  end


  

  def login
   

  end

  def home

  end

  def logout
    session.delete(:user_id)
    @current_user = nil
    redirect_to login_path, flash: { warning: "LOGGED OUT."}
  end

  private 

    def password_params
      params.require(:user).permit(:username, :password, :password_digest)
    end

    def prevent_login_signup
      #this checks if the user is logged in and if so redirects them to the home path if they try
      #to return to the signup or login page
      if session[:user_id]
        redirect_to home_path
      end
    end
end
