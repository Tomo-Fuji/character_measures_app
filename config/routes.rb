Rails.application.routes.draw do
  #get 'characters/index' => "characters#index" #"characters/:id/index"にあとで変更
  get '/' => "home#top"
  get "login_form" => "home#login_form"
  post "login" => "home#login"
  post "logout" => "home#logout"
  get "create_form" => "home#create_form"
  post "create" => "home#create"
  get "characters/:id" => "characters#index"
  get "characters/:id/:fighter" => "characters#measure"
  post "characters/:fighter/save" => "characters#save"
  get "characters/search" => "characters#search"
  post "characters/:id" => "characters#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
