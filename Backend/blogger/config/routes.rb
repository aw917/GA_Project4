Rails.application.routes.draw do
  resources :comments, only: [:index, :show, :delete, :put]
  resources :blogzs do
    resources :comments, only: [:create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
