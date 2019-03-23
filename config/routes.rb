Rails.application.routes.draw do

  devise_for :users, controllers: {sessions: 'sessions'}

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  get 'favoritings/create'

  get 'favoritings/destroy'
  
  resources :comments, only: [:create, :destroy]
   
  resources :favorites, only: [:create, :destroy]
  
  resources :conversations do
    resources :messages
  end
  
  resources :relationships, only: [:create, :destroy]
  resources :favoritings, only: [:create, :destroy]
  
  resources :tests
  
  resources :articles, only: [:create, :show, :index] do 
    resources :comments 
  end
  
  resources :performers, only: [:create, :show, :index] do 
    resources :comment1s 
  end
  
  resources :teachers, only: [:create, :show, :index] do 
    resources :comment2s 
  end
  
  resources :staffs, only: [:create, :show, :index] do 
    resources :comment3s 
  end 
  
  resources :primaries, only: [:create, :show, :index] do 
    resources :comment4s 
  end
  
  resources :maternaires, only: [:create, :show, :index] do 
    resources :comment5s 
  end
  
  resources :publications, only: [:create, :show, :index] do 
    resources :comment6s 
  end
  
  resources :besteachers , only: [:create, :show, :index] do 
    resources :comment7s 
  end
  
  resources :activities , only: [:create, :show, :index] do 
    resources :comment8s 
  end
  
  resources :admissions , only: [:create, :show, :index] do 
    resources :comment9s 
  end
  
  resources :users do 
    resources :comment10s 
  end
  
  resources :posts, only: [:create, :show, :index]do 
    resources :comment11s 
  end
  
  resources :users, only: [:create, :index, :edit]
  resources :sessions, only: [:new, :create, :destroy]
  
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  
 root 'home#index'
end
