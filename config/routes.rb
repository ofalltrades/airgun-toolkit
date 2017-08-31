Rails.application.routes.draw do
  scope '/api' do
    resources :users, :guns, :pellets
    # root 'users#show'
  end
end
