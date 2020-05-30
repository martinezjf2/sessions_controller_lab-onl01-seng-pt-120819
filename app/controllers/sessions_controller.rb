class SessionsController < ApplicationController
  
  def create

    if params[:name] == ""
      # binding.pry
    redirect_to "/login"
    
    elsif params[:name] == nil
      redirect_to "/login"

    elsif params[:name]
        session[:name] = params[:name]
        redirect_to '/'
    
    end
    
  end

  def destroy
    session.delete :name
  end

end
