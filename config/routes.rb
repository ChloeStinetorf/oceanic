Oceanic::Application.routes.draw do

  root :to => 'home#index'
  resources :users, :only => [:new, :create]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
