Rails.application.routes.draw do
  post '/login', to: 'login#login'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :services do
        resources :bookings
      end
    end
  end

end
