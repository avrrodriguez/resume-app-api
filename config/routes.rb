Rails.application.routes.draw do

  # Defines the root path route ("/")
  # root "articles#index"

  # "testing routes from grace!"

  get "/skills" => "skills#index"
end
