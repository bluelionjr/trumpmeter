Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }


  root 'welcome#index'


  get 'welcome/index'

  get 'welcome/about'

  get 'welcome/shop'

  resources :polls

end
