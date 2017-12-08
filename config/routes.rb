Rails.application.routes.draw do
  resources :companies
  resources :students
  devise_for :models
  root :to => "pages#index"
  resources :models, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
