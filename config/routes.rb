Rails.application.routes.draw do
  root 'users#index'
  get 'secret' => 'test_pages#secret'
  get 'pub'    => 'test_pages#pub'
  devise_for :users
  resources :users
end
