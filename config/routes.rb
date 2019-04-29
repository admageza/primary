Rails.application.routes.draw do

  devise_for :users, controllers: {sessions: 'sessions'}
  devise_for :users, controllers: {users: 'users'}
  
  devise_scope :user do
     get '/sign-in' => "devise/sessions#new", :as => :login
  end

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
    resources :comments 
  end
  
  resources :teachers, only: [:create, :show, :index] do 
    resources :comments 
  end
  
  resources :staffs, only: [:create, :show, :index] do 
    resources :comments 
  end 
  
  resources :primaries, only: [:create, :show, :index] do 
    resources :comments 
  end
  
  resources :maternaires, only: [:create, :show, :index] do 
    resources :comments 
  end
  
  resources :publications, only: [:create, :show, :index] do 
    resources :comments 
  end
  
  resources :besteachers , only: [:create, :show, :index] do 
    resources :comments 
  end
  
  resources :activities , only: [:create, :show, :index] do 
    resources :comments 
  end
  
  resources :admissions do 
    resources :comments 
  end
  
  resources :users do 
    resources :comments 
  end
  
  resources :posts, only: [:create, :show, :index]do 
    resources :comments 
  end
  
  resources :users, only: [:index, :edit]
  resources :sessions, only: [:new, :create, :destroy]
  
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  
 root 'home#index'
end
