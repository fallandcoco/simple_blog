Rails.application.routes.draw do
  get 'dashboards/index', as: :dashboards
  resources :logins, only: %i[new create]
  resources :registrations, only: %i[new create]

  resources :users, only: %i[show] do
    resources :posts, only: %i[new edit create update]
  end
  resources :posts, only: %i[index show create]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
