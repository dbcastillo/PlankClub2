Rails.application.routes.draw do
  resources :students
  resources :planks
  resources :welcome, only: [:index]
  get '/students/:id/planks/new', to: "student_planks#new", as: 'new_student_plank'
  post '/student/:id/planks', to: "student_planks#create", as: 'student_planks'
  get '/student/:id/planks/:sp_id/edit', to: 'student_planks#edit', as: 'edited_plank'
  patch '/student/:id/planks/:sp_id', to: 'student_planks#update', as: 'updated_plank'
  delete '/student/:id/planks/:sp_id/delete', to: 'student_planks#destroy', as: 'deleted_plank'

  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  # get '/student/:id/planks/:sp_id', to: 'student_plank#show'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
