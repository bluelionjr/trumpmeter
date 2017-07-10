Rails.application.routes.draw do

  devise_for :users

  root 'welcome#index'


  get 'welcome/index'

  get 'welcome/about'

  get 'welcome/shop'

  resources :polls

end
