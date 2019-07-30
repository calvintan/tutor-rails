Rails.application.routes.draw do
  get 'bookings/show'
  get 'bookings/index'
  get 'bookings/create'
  get 'bookings/edit'
  get 'bookings/update'
  get 'services/show'
  get 'services/index'
  get 'services/create'
  get 'services/edit'
  get 'services/update'
  post '/login', to: 'login#login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
