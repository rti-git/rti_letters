Rails.application.routes.draw do
  get 'select_articles/index'
  get 'articles/index'
  get 'rss_feeds/index'
  devise_for :admins
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "home#index"

  resources :rss_feeds do
    post 'create_newsletter', on: :collection
  end


  resources :selected_articles, only: [:index, :create]

  authenticated :admin do
    #namespace :admin do
    #  resource :rss_feeds, only: [:index]
    
    #end
  #end
    root to: 'rss_feeds#index', as: :authenticated_root
  end
end
