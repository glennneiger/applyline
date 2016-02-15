Rails.application.routes.draw do

  # root 'jobs#index'

  # User Register / Login / Logout Routes
  get '/' => 'users#index'
  post 'register' => 'users#create'
  post 'login' => 'users#login'
  get 'logout' => 'users#logout'

  # Jobs Routes
  get 'welcome' => 'jobs#index'
  post '/add_job' => 'jobs#add'

  get '/:id/show' => 'jobs#show'
  get '/delete/:id' => 'jobs#destroy'
  get '/edit/:id' => 'jobs#update'
  get '/backtrack/:id' => 'jobs#backtrack'

  post '/sent/:id' => 'jobs#sent'
  post '/response/:id' => 'jobs#received'





  # Routes not currently utilized
  get 'jobs/show'

  # Todo -------------------------
  # Be able to edit Jobs


  # Loose ends -------------------
  # 1. Change colors on responsive view
  # 2. Delete confirm PW from users table

end
