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
  get "/admin/post/:id/edit" => "admin#edit"
  post "/admin/post/:id/update" => "admin#update"
  get "/admin/user/:id/edit" => "admin#user_edit"
  post "/admin/user/:id/update" => "admin#user_update"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
