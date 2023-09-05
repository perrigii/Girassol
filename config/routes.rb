Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # config/routes.rb
  devise_for :patients, path: 'patients', controllers: { registrations: 'patients/registrations' }
  devise_for :therapists, path: 'therapists', controllers: { registrations: 'therapists/registrations' }
end
