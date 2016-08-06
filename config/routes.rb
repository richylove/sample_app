Rails.application.routes.draw do

  match '/contact', :to => 'pages#contact'
  match '/about',   :to => 'pages#about'
  match '/help',    :to => 'pages#help'

  root :to => 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
