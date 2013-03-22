Oceanic::Application.routes.draw do

root :to => 'flights#index'
resources :planes, :only => [:index, :new, :create] do
end

resources :flights, :only => [:index, :new, :create, :show] do
end


end
