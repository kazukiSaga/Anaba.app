Rails.application.routes.draw do
  namespace :v1 do
    mount_devise_token_auth_for "User", at: "auth"
  end
  get '/api/test', to: 'application#test' # ここを追加
  resources :users
  resources :assessments
  resources :spots do
    resources :assessments
  end
  resources :comments
  resources :tags
  resources :prefectures
end
