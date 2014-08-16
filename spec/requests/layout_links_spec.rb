require 'rails_helper'

RSpec.describe "LayoutLinks", :type => :request do
  describe "GET /layout_links" do
    it "works! (now write some real specs)" do
      get layout_links_index_path
      expect(response.status).to be(200)
    end

  it "devrait trouver une page Accueil à '/'" do
    get '/'
    response.should have_selector('title', :content => "Accueil")
  end

  it "devrait trouver une page Contact at '/contact'" do
    get '/contact'
    response.should have_selector('title', :content => "Contact")
  end

  it "should have an À Propos page at '/about'" do
    get '/about'
    response.should have_selector('title', :content => "À Propos")
  end

  it "devrait trouver une page Iade à '/help'" do
    get '/help'
    response.should have_selector('title', :content => "Aide")
  end

  end
end
