Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  devise_for :users, path: "auth",as: :users,
    controllers: { registrations: 'users/registrations' }
  namespace :api do
    namespace :v1 do
      resources :posts        
    end      
  end
end
