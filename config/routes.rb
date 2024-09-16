Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      mount_devise_token_auth_for "User", at: "auth"

      resources :spots, only: [:index, :new, :edit,:create, :update, :show]  do
        resources :assessments,only: [:create]
      end
      resources :search_spots, only: [:index]
    end
  end
  get '/api/test', to: 'application#test'
end
