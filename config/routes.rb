Rails.application.routes.draw do
  resources :events
  resources :appointments
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'events#index'
  devise_scope :user do
    get 'log_in', to: 'devise/sessions#new'
    get 'sign_up', to: 'devise/registrations#new'
  end
  
end
