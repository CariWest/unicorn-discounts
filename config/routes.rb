Rails.application.routes.draw do
  root 'trips#index'

  resources :trips do
    resources :reservations
  end
end
