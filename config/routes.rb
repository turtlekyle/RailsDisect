Rails.application.routes.draw do
  resources :portfolios

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'long-distance', to: 'pages#longdistance'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  root to: 'pages#home'
end

