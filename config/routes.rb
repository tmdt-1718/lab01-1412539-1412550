Rails.application.routes.draw do
  get 'about/index'
  root "home#index"
  resources :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get '/articles', to: 'articles#index'
  resources :articles, only: [:index, :show, :edit, :update]
  resources :photos, only: [:index]
  resources :about, only: [:index]
end
