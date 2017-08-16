class SessionsController < ApplicationController
  # before_action :require_login

  def new
  end

  def create
    if !params[:name] || params[:name] == ""
      redirect_to login_path
    else
      # byebug
    session[:name] = params[:name]
    redirect_to "/"
    end
  end

  def destroy
    if !!session[:name]
    session[:name] = nil
    end
    redirect_to login_path
  end
end
