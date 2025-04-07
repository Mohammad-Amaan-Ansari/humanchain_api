Rails.application.routes.draw do
  resources :incidents, only: [:index, :create, :show, :destroy]
end
