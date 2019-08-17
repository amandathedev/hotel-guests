Rails.application.routes.draw do
  resources :rooms
  resources :guests
  resources :hotels
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
