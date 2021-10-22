Rails.application.routes.draw do
  resources :tensus
  get 'sessions/new'
  get 'search' => 'seisekis#search'
  get 'home/top'

  get '/signup', to: 'user#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  root to: 'home#top'

  resources :gakkas
  resources :syuusyokus
  resources :kigyous
  resources :syokusyus
  resources :seisekis
  resources :kyoukas
  resources :users
  resources :kaitous
  resources :situmons
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
