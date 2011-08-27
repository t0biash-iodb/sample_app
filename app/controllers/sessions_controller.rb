class SessionsController < ApplicationController

  def new
    @title = "Zaloguj się"
  end
  
  def create
    user = User.authenticate(params[:session][:email],
                             params[:session][:password])
    if user.nil?
      flash.now[:error] = "Nieprawidłowe chasło lub nazwa użytkownika"
      @title = "Zaloguj się"
      render 'new'
    else
      sign_in user
      redirect_back_or user
    end
  end
  
  def destroy
    sign_out
    redirect_to root_path
  end
end
