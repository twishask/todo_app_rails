Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#hello'
  get '/hello' , to: 'pages#hello'
  resources :tasks 
end
