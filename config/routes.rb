Rails.application.routes.draw do
  devise_for :models
  resources :students
  resources :companies
  root :to => "pages#index"
  resources :models, only: [:show]
  post "students/:id/destroy" => "students#destroy"
  post "companies/:id/destroy" => "companies#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
