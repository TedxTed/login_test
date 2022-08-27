Rails.application.routes.draw do
  get '/current_user', to: 'current_user#index'
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  #users
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :show, :update, :destroy]
    end
  end
  
  
  resource :session, only: [:create, :destroy]
  resources :blocks, only: [:index, :create, :show, :update, :destroy]  
  resources :pages, only: [:create, :index, :show, :update, :destroy] do
    resources :blocks, only: [:index]
  end


end
