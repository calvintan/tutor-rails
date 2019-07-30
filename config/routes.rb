Rails.application.routes.draw do
  resources :services do
    resources :bookings
  end
  post '/login', to: 'login#login'
  root to: "services#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
