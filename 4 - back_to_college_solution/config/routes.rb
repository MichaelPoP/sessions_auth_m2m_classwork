Rails.application.routes.draw do

  ## STUDENTS ROUTES

  root 'students#index'

  get 'students/:id/new', to: "students#enroll", as: 'enroll_student'

  get '/enrollments/:id/new', to: "enrollments#new", as: 'new_enrollment'

  post '/enrollments/:id', to: "enrollments#create", as: 'enrollment'

  resources :students

  ## COURSES ROUTES

  resources :courses

end
