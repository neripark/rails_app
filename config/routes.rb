Rails.application.routes.draw do
  resources :users, only: [:index, :show]
  resources :articles
  get 'home/index'
  get '/hello', to: 'application#hello', as: 'hoge'
  get '/users', to: 'users#index'
  get '/users2', to: 'users#index2'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
