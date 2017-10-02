Rails.application.routes.draw do
  get '/signup', to: 'users#new', as: 'signup'
  get '/signin', to: 'sessions#new', as: 'signin'
  post '/signin', to: 'sessions#create'
  resources :users, only: [:create, :edit, :update, :show]
  resources :feelings
  resources :repos
  get '/logout', to: 'sessions#logout', as: 'logout'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
