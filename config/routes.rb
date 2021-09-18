Rails.application.routes.draw do
  # home controller
  get '/' => "home#index"
  get "/post/:id/detail" => "home#detail"
  get "/privacy" => "home#privacy"
  get "/contact_form" => "home#contact_form"
  get "/search" => "home#search"
  # tag controller
  get "/tag/:id/index" => "tags#index"
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
  get "/admin/tag/mng" => "admin#tag_mng"
  post "/admin/tag/create" => "admin#tag_create"
  post "/admin/tag/:id/delete" => "admin#tag_delete"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
