Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :chatrooms, only: %i[index show create] do
    resources :messages, only: :create
  end
  # Rotas para pacientes
  resources :users, only: [:index, :show, :profile] do
    resources :reviews, only: %i[new create]
    resources :appointments, only: %i[new create]
  end
  resources :rooms, only: %i[create show]
    # Rota para as avaliações de terapeuta
    # Defines the root path route ("/")
    # root "articles#index"
    # config/routes.rb
  get "/appointments", to: "appointments#general_appointments"
  get "/search", to: "pages#search", as: :search
  get "/profile", to: "pages#profile", as: :profile
  get "/patients", to: "pages#patients", as: :patients
  get "/dedechat", to: "pages#dedechat", as: :dedechat
  resources :appointments, only: %i[show destroy]
end
