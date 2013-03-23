Oceanic::Application.routes.draw do


  root :to => 'flights#index'
  resources :planes, :only => [:index, :new, :create] do
  end

  resources :flights, :only => [:index, :new, :create, :show] do
    collection do
      post "purchase"
      get 'search'
      post "destinations"
      post "search_flights"

    end
  end

  resources :users, :only => [:new, :create]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'


end
