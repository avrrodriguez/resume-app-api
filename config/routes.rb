Rails.application.routes.draw do

  # Defines the root path route ("/")
  # root "articles#index"

  # education routes
  # resources :educations

  # capstones routes
  # resources :capstones

  get "/skills" => "skills#index"
  get "/skills/:id" => "skills#show"
  post "/skills" => "skills#create"
  patch "/skills" => "skills#update"
  delete "/skills/:id" => "skills#destroy"

  get "/experiences" => "experiences#index"
  get "/experiences/:id" => "experiences#show"
  post "/experiences" => "experiences#create"
  patch "/experiences/:id" => "experiences#update"
  delete "/experiences/:id" => "experiences#destroy"

  resources :students do
    # resources :skills
    resources :educations
    resources :capstones
  end
end
