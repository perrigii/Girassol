Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
  # Rotas para pacientes
  resources :users, only: [:index, :show]
  # Defines the root path route ("/")
  # root "articles#index"
  # config/routes.rb
end
