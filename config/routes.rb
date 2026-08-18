
Rails.application.routes.draw do
  root "pages#home"

  # Authentication routes
  get  "/login",  to: "sessions#new",     as: :login
  post "/login",  to: "sessions#create"
  delete "/logout", to: "sessions#destroy", as: :logout
end
