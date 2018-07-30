Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  # resources :home, only: :index
  resources :images, only: [:new, :create]
  get '/common_images', to: 'images#common_images'
  get '/subscribed_images', to: 'images#subscribed_images'
  get '/subscribe', to: 'subscriptions#subscribe'
  get '/unsubscribe', to: 'subscriptions#unsubscribe'
  get '/refresh_images', to: 'images#refresh_images'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
