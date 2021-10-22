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
  get 'situmon_search', to: 'situmons#search'
  get 'situmon_search2', to: 'situmons#search2'
  get 'situmon_search3', to: 'situmons#search3'
  get 'situmon_search4', to: 'situmons#search4'
end



