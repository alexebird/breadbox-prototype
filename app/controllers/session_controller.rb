class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by_login(params[:email], params[:password])
    if user
      session[:user_id] = user.id if user
      redirect_to inventory_entries_url
    else
      redirect_to welcome_url, :notice => "Couldn't find that user.  Maybe you entered the wrong password."
    end
  end

  def destroy
    session[:user_id] = nil
  end
end
