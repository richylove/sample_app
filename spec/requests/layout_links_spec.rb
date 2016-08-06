require 'rails_helper'

RSpec.describe "LayoutLinks", type: :request do

  it "devrait trouver une page Accueil à '/'" do
    get '/'
    expert(response).to have_selector('title', :content => "Accueil")
  end

  it "devrait trouver une page Contact à '/contact'" do
    get '/contact'
    expert(response).to have_selector('title', :content => "Contact")
  end

  it "devrait trouver une page À Propos à '/about'" do
    get '/about'
    expert(response).to have_selector('title', :content => "À Propos")
  end

  it "devrait trouver une page Aide à '/help'" do
    get '/help'
    expert(response).to have_selector('title', :content => "Aide")
  end

  it "devrait avoir une page d'inscription à '/signup'" do
    get '/signup'
    expert(response).to have_selector('title', :content => "Inscription")
  end
end
