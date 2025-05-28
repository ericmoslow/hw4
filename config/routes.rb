Rails.application.routes.draw do
  get("/", { :controller => "places", :action => "index" })
  resources "entries"
  resources "places"
  resources "sessions"
  resources "users"

  delete "/logout", to: "sessions#destroy"
  get "/login", to: "sessions#new"
  post "/sessions", to: "sessions#create"
end
