Rails.application.routes.draw do
  devise_for :users, only: [:sessions], controllers: { sessions: 'users/sessions'}, path_names: { sign_in: 'login-admin123' }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :confessions, only: [:index, :new, :destroy] do
    collection do
      post :index
    end
    post 'like_dislike', on: :member
    put 'approve', on: :member
  end
  resources :challenges, only: [:index, :new, :create, :destroy] do
    get 'participate', on: :member
  end
  post '/', to: 'confessions#index'
  post 'confessions/create', to: 'confessions#create', as: 'create_confession'
  resources :comments, only: [:create, :index, :destroy] do
    post 'like_dislike', on: :member
    post 'index', on: :member
    put 'approve', on: :member
  end
  # Defines the root path route ("/")
  root "confessions#index"
  # static pages:
  get 'about', to: 'static_pages#about'
  get 'privacy_policy', to: 'static_pages#privacy_policy'
  get 'licensing', to: 'static_pages#licensing'
end
