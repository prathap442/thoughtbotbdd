Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'posts#index'
  get '/posts',to: "posts#index",as: 'posts'
  post '/posts', to: 'posts#create'
  get '/posts/new', to: "posts#new",as: 'new_post'
  get '/posts/:id',to: "posts#show",as: 'post'
  get '/posts/:id/edit', to: "posts#edit",as: 'edit_post'
  put '/posts/:id',to: "posts#update"
  delete '/posts/:id',to: "posts#destroy"
  get 'sessions/new',to: "sessions#new"
end
