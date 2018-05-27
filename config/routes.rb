Rails.application.routes.draw do
  root to: 'home#landing'
  get 'home/landing'
  get 'home/home'
  get 'home/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
