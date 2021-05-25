Rails.application.routes.draw do
  root 'welcome#index'

  resources :posts do
    resources :comments, only: [:create, :destroy]
  end

  resources :posts
  resources :bulletins do
    resources :posts
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
