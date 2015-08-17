class UsersController < ApplicationController
  #get
  def signup
    #render a view ad let a user register
    #my only job is to render a form...yayyyy i have a job!



  end
#post
  def confirmation
    # puts '------users#confirmation-------'
    # puts user_params
    # puts '-----end users#confirmation-------'
    #post request that handles information/says thanks
    @user = User.new(user_params)
    if @user.save
      #thanks, youre in!
      session[:user_id] = @user.id

      # Destination.where(:user.id => sessions[:user_id].to_i)
    else
      @message = 'User account extists or passwords do not match'
      render 'users/signup'
      #womp womp...error message
  end
end


  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
