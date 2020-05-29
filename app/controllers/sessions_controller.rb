class SessionsController < ApplicationController
  
  def create
    session[:name] = params[:name]
    if !session[:name]
      render :new
    else
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
  end

end
