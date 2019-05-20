Rails.application.routes.draw do
  resources :posts
  post 'posts/new'
  get 'ripai/before'
  post '/ripai/after/', to: 'ripai#after'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'ripai#before'
end
