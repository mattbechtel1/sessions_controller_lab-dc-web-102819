class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name]
    # byebug 
    if session[:name].blank?
      redirect_to sessions_new_path
    else 
      redirect_to root_path
    end
  end

  def destroy
    session.delete :name
    render :new
  end
end
