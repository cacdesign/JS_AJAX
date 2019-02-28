Rails.application.routes.draw do
  #get 'emails/index'
	root to: 'home#index'
  devise_for :users
  resources :tasks, except: [:show]
  resources :emails
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
