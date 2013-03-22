Oceanic::Application.routes.draw do

<<<<<<< HEAD
root :to => 'flights#index'
resources :planes, :only => [:index, :new, :create] do
end

resources :flights, :only => [:index, :new, :create, :show] do
end

=======
  root :to => 'home#index'
  resources :users, :only => [:new, :create]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
>>>>>>> 391c8bbb1fcfe83bb07fc7ea910618e69631626c

end
