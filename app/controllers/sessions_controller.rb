class SessionsController < ApplicationController
  def new
  end

  def create
    if !!params[:name] && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to '/sessions/welcome'
    else
      redirect_to '/'
    end
  end

  def destroy
    session[:name] = nil
    redirect_to '/'
  end

  def welcome
  end
end
