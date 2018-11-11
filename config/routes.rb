Rails.application.routes.draw do
  resources :articles
  get 'home/index'
  get '/hello', to: 'application#hello', as: 'hoge'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
