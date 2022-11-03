Rails.application.routes.draw do

  # Defines the root path route ("/")
  # root "articles#index"


  # education
  get "/educations" => "educations#index"
  post "/educations" => "educations#create"
  get "/educations/:id" => "educations#show"
  patch "/educations/:id" => "educations#update"
  delete "/educations/:id" => "capstones#destroy"

  # capstone
  get "/capstones" => "capstones#index"
  post "/capstones" => "capstones#create"
  get "/capstones/:id" => "capstones#show"
  patch "/capstones/:id" => "capstones#update"
  delete "/capstones/:id" => "capstones#destroy"
end
