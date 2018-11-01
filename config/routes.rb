Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'gossip/new'
  root 'static_pages#home'
  resources 'gossip'
  get 'gossip/index/:id', to: 'gossip#index'
  get 'gossip/new/:id', to: 'gossip#new'
  resources 'registration'
  resources 'like'

end
