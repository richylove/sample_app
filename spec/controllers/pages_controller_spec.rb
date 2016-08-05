require 'rails_helper'

RSpec.describe PagesController, type: :controller do 
  

  describe "GET #home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end
    
    it "devrait avoir le bon titre" do
      get :home
      expect(response).to have_selector("title",
                        :content => "Simple App du Tutoriel Ruby on Rails | Accueil")
    end
  end

  describe "GET #contact" do
    it "returns http success" do
      get :contact
      expect(response).to have_http_status(:success)
    end

    it "devrait avoir le bon titre" do
      get :contact
      expect(response).to have_selector("title",
                        :content =>
                          "Simple App du Tutoriel Ruby on Rails | Contact")
    end
  end

  describe "GET #about" do
    it "returns http success" do
      get :about
      expect(response).to have_http_status(:success)
    end

    it "devrait avoir le bon titre" do
      get :about
      expect(response).to have_selector("title",
                        :content =>
                          "Simple App du Tutoriel Ruby on Rails | À Propos")
    end
  end
  
end
