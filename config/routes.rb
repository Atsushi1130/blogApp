Rails.application.routes.draw do
  # home controller
  get '/' => "home#index"
  get "/post/:id/detail" => "home#detail"
  # admin controller
  get "/admin/post/new" => "admin#new"
  post "/admin/post/create" => "admin#create"
  post "/admin/post/:id/delete" => "admin#delete"
  get "/admin/login_form" => "admin#login_form"
  post "/admin/login" => "admin#login"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
