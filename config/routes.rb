Rails.application.routes.draw do
  root 'parks#index'
  devise_for :usuarios

  resources :parks
end
