Rails.application.routes.draw do
  post '/login', to: 'login#login'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users, only: [:show]
      resources :services do
        resources :bookings
      end
    end
  end

  root to: 'pages#home'
end
