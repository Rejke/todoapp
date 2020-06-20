Rails.application.routes.draw do
  namespace :api do
    get 'projects/index'
  end

  namespace :api do
    get 'todo/create'
  end

  namespace :api do
    get 'todo/update'
  end

  get 'todo/index'

  patch 'todo/update/:id', to: 'todo#update', as: 'todo_update'

  post 'todo/create'

  root 'todo#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
