Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'tasks#index'
  get "tasks", to: "tasks#index"
  get "tasks/:id/edit", to: "tasks#edit", as: "edit_task"

  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"

  get "tasks/:id", to: "tasks#show", as: "task"
  patch "tasks/:id", to: "tasks#update"

  delete "tasks/:id", to: "tasks#destroy"
end
