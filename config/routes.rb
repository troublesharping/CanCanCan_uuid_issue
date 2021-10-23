Rails.application.routes.draw do
  root to: 'home#index'
  resources :user_files, path: 'files', param: :uuid
  devise_for :users
end
