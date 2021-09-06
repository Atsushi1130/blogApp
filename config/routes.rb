Rails.application.routes.draw do
  get '/' => "home#index"
  get "/post/new" => "home#new"
  post "/post/create" => "home#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
