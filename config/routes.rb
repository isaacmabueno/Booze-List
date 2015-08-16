Rails.application.routes.draw do

  #landing page
  root 'lists#index'
  #destinations
  get 'lists' => 'lists#index'
  get 'lists/new' => 'lists#new'
  post 'lists/create' => 'lists#create'
  post 'lists/update' => 'lists#update'
  patch 'lists/delete' => 'lists#delete'
  get 'lists/confirmation' => 'lists#confirmation'
  #sessions- login/logout
  get 'users/login' => 'sessions#login'
  post 'users/login_confirmation' => 'sessions#confirmation'
  get 'users/logout' => 'sessions#logout'
  #http verb 'resource/route' => mapped to a controller method
  get 'users/register' => 'users#signup'
  post 'users/confirmation' => 'users#confirmation'

end
