Rails.application.routes.draw do
  get 'user/new'

  get 'user/create'

  get 'user/edit'

  get 'user/update'

  get 'user/show'

  resources :feelings, only: [:new, :create, :index, :edit, :update, :destroy, :show]
  resources :repos, only: [:new, :create, :index, :edit, :update, :destroy, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
