class SessionsController < ApplicationController
  def new
    log_out
  end

  def create
    user = User.find_by(akaunto: params[:session][:akaunto].downcase)
    if user && user.pasuwado == params[:session][:password]
      log_in user
      redirect_to root_path
    else
      flash[:danger] = "ログインに失敗しました！"
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end

end
