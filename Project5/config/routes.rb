Rails.application.routes.draw do
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/login'
  # get 'sessions/welcome'
  # get 'users/new'
  # get 'users/create'
  resources :courses

  #routes for login and sign up
  resources :users
  

  resources :applications
  get 'my_applications', to: 'applications#my_application'
  

  resources :evaluations

  resources :recommendations

  resources :student_courses


  get 'login', to: 'sessions#new'
  get 'login', to: 'sessions#create'
  post 'login', to: 'sessions#create'
  get 'my_page', to: 'sessions#my_page_req_login'
  post 'logout', to: 'sessions#destroy'
  #get 'apply', to: 'apply#index'
  #post 'applied', to: 'applied#addApplicant'
  get 'applied', to: 'applied#result'
  get 'applied/:id/edit', to: 'applied#edit', as: :edit
  get 'users', to: 'users#index'
  get 'survey', to: 'users#search'
  get '/users/:id/edit', to: 'users#edit'
  get 'recommendations', to: 'recommendations#index'
  get 'matching', to: 'matching#index'
  put 'matching', to: 'matching#search'


  #get '/addcourse', to: 'student_courses#new'
  #  match '/scrabe', to: 'courses#scrape', via :post, on: :collection
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

   root to: 'courses#index'
   get '/search', to: 'courses#search'

end
