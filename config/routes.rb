Rails.application.routes.draw do
  namespace :api do
    match 'projects/' => 'projects#index', :via => [:get], :defaults => { :format => 'json' }
    get 'projects/index'
  end

  namespace :api do
    match 'todo/' => 'todo#index', :via => [:get], :defaults => { :format => 'json' }
    get 'todo/index'
    post 'todo/create'
    patch 'todo/update/:id' => 'todo#update'
  end

  get 'todo/index'

  patch 'todo/update/:id', to: 'todo#update', as: 'todo_update'

  post 'todo/create'

  root 'todo#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
