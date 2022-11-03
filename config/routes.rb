Rails.application.routes.draw do

  # Defines the root path route ("/")
  # root "articles#index"


  # education
  get "/educations" => "educations#index"
  post "/educations" => "educations#create"
  get "/educations/:id" => "educations#show"
  patch "/educations/:id" => "educations#update"
  delete "/educations/:id" => "photos#destroy"
end
