Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'gossip/new'
  root 'static_pages#home'
  resources 'gossip'

end
