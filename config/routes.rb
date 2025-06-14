Rails.application.routes.draw do
  get("/", { :controller => "places", :action => "index" })
  resources "entries"
  resources "places"
  resources "sessions"
  resources "users"

  get("/login", {:controller => "sessions", :action => "new"})
  delete("/logout", {:controller => "sessions", :action => "destroy"})
  post("/sessions", {:controller => "sessions", :action => "create"})
end
