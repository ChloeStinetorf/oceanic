class SessionController < ApplicationController
  def new
  end

  def create
    user = User.where(:email => params[:email]).first
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      @flights = Flight.order(:date)
    else
      session[:user_id] = nil
    end
      authenticate
  end

  def destroy
    session[:user_id] = nil
    authenticate
    @flights = Flight.order(:date)
  end
end