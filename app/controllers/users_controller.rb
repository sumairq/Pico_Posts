class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update]
  before_action :admin_user, only: :destroy

  def index
    @users = User.page(params[:page])

  end

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
      log_in @user
      flash[:success] = "Welcome to the sample app."
      redirect_to user_url(@user)
      # we can also do [redirect_to @user] and omit user_url and it will work the same.
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      #Handle a successful update.
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit', status: :unprocessable_entity
    end 
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

    #Before filters 

    #Confirms a logged-in user.
    def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url

    end

    end
    #Confirms the correct user.
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)                        #We abstracted this line   (@user == current_user) in to a function
    end

    # Confirms an admin user.
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
end
 