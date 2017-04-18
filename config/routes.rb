Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # CREATE
  # get the form for the info
  get 'tasks/new', to: 'tasks#new'

  # add task (CREATE)
  post 'tasks', to: 'tasks#create'

  # SHOW
  # show all tasks
  get 'tasks', to: 'tasks#index'

  # show one task
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  # UPDATE
  # edit a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'

  # update the task
  patch 'tasks/:id', to: 'tasks#update'

  # DELETE
  # delete
  delete 'tasks/:id', to: 'tasks#destroy', as: 'tasks_destroy'

end
