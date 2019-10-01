Rails.application.routes.draw do
  resources :users
  get '/signup',      to: 'users#new', as: 'signup'
  get 'foo/bar'
  get 'foo/baz'
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/home',    to: 'static_pages#home'
  post '/signup',  to: 'users#create'
  resources :users
end
