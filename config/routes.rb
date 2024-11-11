Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      mount_devise_token_auth_for "User", at: "auth"

      resources :spots, only: [:index, :new, :edit,:create, :update, :show]  do
        resources :assessments,only: [:create]
        resources :comments,only: [:index, :new, :show, :create]
      end
      resources :search_spots, only: [:index]
      resources :marker_spots, only: [:index]
    end
  end
      scope '/api/v1' do
    resources :users, only: [:update]
  end

  get '/api/test', to: 'application#test'
end
