Rails.application.routes.draw do
  post 'event_attendings', to: 'event_attendings#create', as: 'create_event_attending'
  delete 'event_attendings/:id', to: 'event_attendings#destroy', as: 'destroy_event_attending'
  resources :event_attendings, only: %i[create destroy]
  devise_for :users
  resources :users, only: %i[show]
  resources :events
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'events#index'
end
