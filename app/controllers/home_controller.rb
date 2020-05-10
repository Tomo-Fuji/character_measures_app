class HomeController < ApplicationController
  before_action :forbid_login_user,{only:[:top,:login_form,:login,:create_form,:create]}
  def top
  end
  def login_form
  end
  def login
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      flash[:notice] = "ログインしました"
      redirect_to("/characters/#{@user.id}")
    else
      @error_message = "メールアドレスまたはパスワードが間違っています"
      @email = params[:email]
      @password = params[:password]
      render("login_form")
    end
  end
  def logout
    flash[:notice] = "ログアウトしました"
    session[:user_id] = nil
    redirect_to("/")
  end
  def create_form
  end
  def create
    @user = User.find_by(email: params[:email])
    if @user
      @error_message = "このメールアドレスは既に使われています"
      redirect_to("/create_form")
    end
    @user = User.new(name: params[:name], email: params[:email], password: params[:password])
    @user.save
    @measure = Measure.new(user_id: @user.id)
    @measure.save
    session[:user_id] = @user.id
    redirect_to("/characters/#{@user.id}")
  end
end
