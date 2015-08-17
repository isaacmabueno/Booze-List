class ListsController < ApplicationController
  #get

  # create_table :lists do |t|
  #   t.string :brand
  #   t.string :cost
  #   t.integer :user_id
  before_filter :authorize
  def index
    #render a list....give a form to "checkoff"  a drink
    @lists = List.all { |e| }
  end
  #get
  def new
    # displays a form to create a new destination
    @list = List.new
  end
  #post
  def create
    #handle the form submissiong and add to database
    @list = List.create(
    :brand => params[:list][:brand],
    :cost => params[:list][:cost],
    :user_id => params[:list][:user_id].to_i
    )
  end
  #post
  def update
  #lets a user check off a drink from index
  end
  #patch
  def delete
    #lets a user delete a drink IF they have NOT check it off
    #else......they can't. You've already had it.
    @list = Product.find(params[list]).destroy
  end
  private
  def list_params
    params.require(:list).permit(:name, :quantity)
  end
  #get request
  def confirmation
    #catch all confirmation
  end
end
