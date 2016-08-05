Rails.application.routes.draw do
  get 'pages/home' => 'pages#home'
  get 'pages/contact' => 'pages#contact'
  get 'pages/about' => "pages#about"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
