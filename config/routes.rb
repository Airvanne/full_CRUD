Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :gossips

  get '/', to: 'static_pages#home'

  get 'gossip/new', to: 'gossip#new'
  post 'gossip/create', to: 'gossip#create'
  get 'gossip/create/:id', to: 'gossip#id'

  get 'gossip/show', to: 'gossip#show'


  get 'gossip/:id/edit', to: 'gossip#edit'
  patch 'gossip/:id', to: 'gossip#update'

  get 'gossip/:id', to: 'gossip#show'

end
