Rails.application.routes.draw do
  root to: "events#index"
  #redirect('/events')
  resources :events
  resources :attendances
  get '/users', to: 'users#show'
  

  devise_for :users
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
