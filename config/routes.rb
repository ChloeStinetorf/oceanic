Oceanic::Application.routes.draw do

resources :planes, :only => [:index, :new, :create] do
end




end
