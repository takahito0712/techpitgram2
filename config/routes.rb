Rails.application.routes.draw do
  devise_for :users,
  controllers: { registrations: 'registrations' } # ここの行を追加
  root 'posts#index'

  # ここにusersコントローラーのshowアクションのルーティングを追加する
  get '/users/:id', to: 'users#show', as: 'user'

  # get '/posts/new', to: 'posts#new'
  # post '/posts', to: 'posts#create'
  # post '/posts/:post_id/photos', to: 'photos#create', as: 'post_photos'  #下と同じ意味
  resources :posts, only: %i(new create index show destroy) do
    resources :photos, only: %i(create)

    resources :likes, only: %i(create destroy)
    resources :comments, only: %i(create destroy)
end
end
