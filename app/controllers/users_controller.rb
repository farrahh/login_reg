class UsersController < ApplicationController

  # before_action:check_status

  def index
  end


  def create
    user= User.create(name:params[:name], email: params[:email], password:params[:password], password_confirmation:params[:password_confirmation])

    if user.valid?
        session[:user_id] = user[:id]
      redirect_to '/show'
    else
      render json: user.errors
    end

  end

  def login
    user=User.find_by_email(params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user[:id]
      redirect_to '/show'
    else
       render text: "Either email or password was incorrect"
    end


  end

end
