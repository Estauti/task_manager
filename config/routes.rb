Rails.application.routes.draw do
  resources :responsibles
  root to: "tasks#index"

  resources :tasks
  get "not_found", to: "errors#not_found"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
