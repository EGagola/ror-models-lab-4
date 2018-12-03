Rails.application.routes.draw do
  root "restaurants#home"
  get '/chef', to: "restaurants#chef"
  get '/chef/new', to: "restaurants#chefnew"
  get '/chef/:id', to: "restaurants#chefshow"
  get '/dish', to: "restaurants#dish"
  get '/dish/new', to: "restaurants#dishnew"
  get '/dish/:id', to: "restaurants#dishshow"
  put '/chef', to: "restaurants#save"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
