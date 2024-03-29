class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      #Log the user in and redirect to the user's show page.
      # if user.activated?
      #   log_in user 
      #   params[:session][:remember_me] == '1' ? remember(user) : forget(user) 
      #   redirect_back_or user
      # else
      #   message = "Account not activated. "
      #   message += "Check your email for the activation link."
      #   flash[:warning] = message
      #   redirect_to root_url
      # end
        log_in user 
        params[:session][:remember_me] == '1' ? remember(user) : forget(user) 
        redirect_back_or user
    else
      # Create an error message.
    flash.now[:danger] = 'Invalid email/password combination'
    render :new, status: 422
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url, status: :see_other
  end
end
