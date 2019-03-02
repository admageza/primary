Rails.application.routes.draw do
  
  devise_for :users, path: 'users', controllers: { sessions: "users/sessions" }

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  resources :relationships, only: [:create, :destroy]
  
  resources :teachers, only: [:show, :index] do
    resources :comments
  end
  resources :staffs, only: [:show, :index] do
    resources :comments
  end
  resources :users, only: [:index, :edit]
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  
  resources :admissions
 
  resources :activities , only: [:create, :show, :index]
  
  resources :primaries, only: [:create, :show, :index] 
  
  resources :maternaires, only: [:create, :show, :index]
  
  
  resources :publications, only: [:show, :index] do
    resources :comments
  end
  resources :performers, only: [:show, :index] do
    resources :comments
  end
  resources :articles, only: [:create, :show, :index] do
    resources :comments, only: [:create, :index, :destroy]
  end
  resources :posts, only: [:create, :show, :index] do
    resources :comments
  end
  
  resources :favorites, only: [:create, :destroy]
  
  resources :conversations do
    resources :messages
  end
  
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  
 root 'home#index'
end
