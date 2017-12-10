Rails.application.routes.draw do
  devise_for :users
  resources :users, :visitors

  authenticated :user do
  root to: 'visitors#index', as: :authenticated_root
    end
  root to: redirect('/users/sign_in')
end
