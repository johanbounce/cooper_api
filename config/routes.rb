Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/v1/auth', skip: [:omniauth_callbacks]
  namespace :api do
    namespace :v1, defaults: { format: :json } do
<<<<<<< HEAD
      resources :performance_data, only: [:create, :index]
=======
      resources :performance_data, only: [:index, :create]
>>>>>>> 39b466b242256fcbd66b425ce5e1b6d1aaa1dab7
    end
  end
end
