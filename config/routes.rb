# Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
# end
Rails.application.routes.draw do
  root 'home#index'

  get 'about', to: 'about#index'
  get 'books', to: 'books#show_all'
  get 'stories', to: 'stories#show_all'

  resources :books, only: [:show] do
    resources :stories, only: [:show], controller: 'books/magazines'
  end

  resources :stories, only: [:show]

  # Routes for showing the search
  resources :books do
    collection do
      get 'show_all'
    end
  end

  resources :stories do
    collection do
      get 'show_all'
    end
  end

end
