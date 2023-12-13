class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # Handle a successful  save.
      flash[:success] = "Welcome to the sample app."
      redirect_to user_url(@user)
      # we can also do [redirect_to @user] and omit user_url and it will work the same.
    else
      render 'new', status: :unprocessable_entity
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
 