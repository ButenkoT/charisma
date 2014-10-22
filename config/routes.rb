Rails.application.routes.draw do
  root :to => 'pages#home'

  get '/users/edit' => 'users#edit', :as => :edit_user
  resources :users, :except => [:edit]
  
  resources :categories
  resources :products do
    resources :comments 
  end
  

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
