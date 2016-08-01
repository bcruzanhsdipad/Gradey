Rails.application.routes.draw do
	

  resources :students
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  get 'home/index'

  get 'home/about'

  get 'home/contact'

  get 'home/support'

  root 'home#index'
end
