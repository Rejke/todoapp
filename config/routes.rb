Rails.application.routes.draw do
  get 'todo/index'

  patch 'todo/update/:id', to: 'todo#update', as: 'todo_update'

  post 'todo/create'

  root 'todo#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
