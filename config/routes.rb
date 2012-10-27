LogoApp::Application.routes.draw do
  get "/logos", :controller=>"Logos", :action=>"index", :as=>"logos"
  post "/logos", :controller=>"Logos", :action=>"create"

  get "/logos/new", :controller=>"Logos", :action=>"new", :as=>"new_logo"

  get "/logos/:id/edit", :controller=>"Logos", :action=>"edit", :as=>"edit_logo"

  get "/logos/:id", :controller=>"Logos", :action=>"show", :as=>"logo"
  put "/logos/:id", :controller=>"Logos", :action=>"update"
  delete "/logos/:id", :controller=>"Logos", :action=>"destroy"
end