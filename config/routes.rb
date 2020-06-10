Rails.application.routes.draw do
  get 'todo/index'

  get 'todo/update'

  get 'todo/create'

  root 'todo#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
