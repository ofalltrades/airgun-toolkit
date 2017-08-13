Rails.application.routes.draw do
  resources :users, :guns, :pellets
  root 'users#show'

  namespace :api, defaults: { format: :json },
                  constraints: { subdomain: 'api' },
                  path: '/' do                       # set starting paths for
                                                     #   requests to root in
                                                     #   relation to the subdomain
    scope module: :v0_1_0 do

    end
  end
end
