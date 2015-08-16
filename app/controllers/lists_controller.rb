class ListsController < ApplicationController
  #get
  def index
    #render a list....give a form to "checkoff"  a vacay
  end
  #get
  def new
    # displays a form to create a new destination
  end
  #post
  def create
    #handle the form submissiong and add to database
  end
  #post
  def update
  #lets a user check off a drink from index
  end
  #patch
  def delete
    #lets a user delete a drink IF they have NOT check it off 
    #else......they can't. You've already had it.
  end
  #get request
  def confirmation
    #catch all confirmation
  end
end
