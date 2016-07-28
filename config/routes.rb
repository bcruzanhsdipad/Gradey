Rails.application.routes.draw do
  get 'home/index'

  get 'home/about'

  get 'home/contact'

  get 'home/support'

  root 'home#index'
end
