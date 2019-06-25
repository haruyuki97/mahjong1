Rails.application.routes.draw do

  get 'favorite_posts/index', as: 'favorite_posts'
  resources :free_choice_posts
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  namespace :admin do
    resources :users
  end
  # resources :postsより上に記入しないと、posts/:idに吸収される
  get 'posts/favorite'
  post 'posts/favorite'

  resources :posts do
    resources :comments
  end


  post 'posts/new'
  get 'ripai/before'
  post '/ripai/after/', to: 'ripai#after'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'ripai#before'



end
