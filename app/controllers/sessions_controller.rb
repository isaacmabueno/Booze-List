class SessionsController < ApplicationController
  #get
  def login
  # form to login
  end
#post
  def confirmation
    #show a user message reguarding login status
    #this is the instance variable of our current user
    # puts '------users#confirmation-------'
    # puts puts
    # puts '-----end users#confirmation-------'
    @user = User.find_by_email(params[:email])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/'
    else
      @message = 'User account or password are valid'
      render '/sessions/login'
  end
end
#get
  def logout
    # logout
    session[:user_id] = nil
    redirect_to '/users/login'
  end
end
