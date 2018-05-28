Rails.application.routes.draw do
  resources :posts
  devise_for :users, :controllers => { registrations: 'registrations' }
  get 'users/me', to: 'users#showMe', as: 'my_profile'
  get 'users/:id', to: 'users#show'
  root to: 'home#landing'
  get 'home/landing'
  get 'home/home'
  get 'home/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
