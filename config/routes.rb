Rails.application.routes.draw do
  root :to => 'pages#home'
  get '/users/edit' => 'users#edit', :as => :edit_user
  resources :users, :except => [:edit]

  # get '/categories' => 'categories#index'
  # get '/categories/:id' => 'categories#show', :as => 'calegory/<%= @category.title %>'
  resources :categories, :products

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
