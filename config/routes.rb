Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  # Create restaurant
  get '/tasks/new', to: 'tasks#new', as: :new_task
  post '/tasks', to: 'tasks#create'

  # Read all
  get '/tasks', to: 'tasks#index'

  # Read one
  get '/tasks/:id', to: 'tasks#show', as: :task

  # Update
  get '/tasks/:id/edit', to: 'tasks#edit', as: :task_edit
  patch '/tasks/:id', to: 'tasks#update'
end
