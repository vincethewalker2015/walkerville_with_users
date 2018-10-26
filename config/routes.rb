Rails.application.routes.draw do
 
 root 'pages#home'
 
 resources :topics
 resources :users
 
 get '/login', to: 'sessions#new'
 post '/login', to: 'sessions#create'
 delete '/login', to: 'sessions#destroy'
 
end
