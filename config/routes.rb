Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # ここにpagesコントローラーのhomeアクションのルーティングを追加する
  get 'pages/home'
  # この行を編集する
  root 'pages#home'
end
