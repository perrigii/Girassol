Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :chatrooms, only: %i[index show create] do
    resources :messages, only: :create
  end
  # Rotas para pacientes
  resources :users, only: %i[index show] do
    resources :appointments
  end

  match '/:name' => 'rooms#show', as: :room, via: :get, name: /.*/
  resources :rooms, only: %i[create show]
  # Defines the root path route ("/")
  # root "articles#index"
  # config/routes.rb
end
