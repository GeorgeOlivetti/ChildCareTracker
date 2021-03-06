class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_phoneNumber(params[:phoneNumber])
    if user
      session[:user_id] = user.id
      redirect_to "/users/userDashboard", notice: 'Logged In!'
    else
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Logged out!'
  end
end
