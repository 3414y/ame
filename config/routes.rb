Rails.application.routes.draw do
  get 'home/top'
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
