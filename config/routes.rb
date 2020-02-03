Rails.application.routes.draw do
  devise_for :users,
  controllers: { registrations: 'registrations' } # ここの行を追加
  root 'pages#home'

  # ここにusersコントローラーのshowアクションのルーティングを追加する
  get '/users/:id', to: 'users#show', as: 'user'
end
