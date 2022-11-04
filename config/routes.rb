Rails.application.routes.draw do

  # Defines the root path route ("/")
  # root "articles#index"

  resources :students do
    resources :educations
    resources :capstones
    resources :skills
    resources :experiences

  end

  post "/sessions" => "sessions#create"

end
