class SessionController < ApplicationController
  def create
    user = User.find(params[:id])
    session[:user_id] = user.id if user
  end

  def destroy
    session[:user_id] = nil
  end
end
