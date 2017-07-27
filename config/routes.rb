Rails.application.routes.draw do
  resources :users, :guns, :pellets
  root 'users#show'
end
