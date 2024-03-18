Rails.application.routes.draw do
  get 'articles/index'
  get 'rss_feeds/index'
  devise_for :admins
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "home#index"

  authenticated :admin do
    #namespace :admin do
    #  resource :rss_feeds, only: [:index]
    
    #end
  #end
    root to: 'rss_feeds#index', as: :authenticated_root
  end
end
