ForumMonster::Application.routes.draw do
  resources :categories, :except => [:index, :show]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  resources :sessions
  resources :users
  resources :forums, :except => :index do
    resources :topics, :shallow => true, :except => :index do
      resources :posts, :shallow => true, :except => [:index, :show]
    end
    root :to => 'categories#index', :via => :get
  end

  #get "sessions/new"
  

  get "static_pages/home"

  get "static_pages/help"

  root :to => 'categories#index'

  
end
