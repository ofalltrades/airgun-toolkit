Rails.application.routes.draw do
  resources :users, :guns, :pellets, :groupings, except: :index
end
