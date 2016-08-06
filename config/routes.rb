Rails.application.routes.draw do

  get "users/new"
  get '/signup',  :to => 'users#new', as: 'signup'

  get '/contact', :to => 'pages#contact', as: 'contact'
  get '/about',   :to => 'pages#about', as: 'about'
  get '/help',    :to => 'pages#help', as: 'help'

  root :to => 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
