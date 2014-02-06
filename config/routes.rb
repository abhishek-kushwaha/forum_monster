ForumMonster::Application.routes.draw do
  #get "sessions/new"
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  resources :sessions
  resources :users

  #get "pages/home"

  get "pages/help"

  root :to => 'pages#home'

  
end
