Rails.application.routes.draw do
 
 root 'pages#home'
 
 resources :topics
 resources :users
 
end
