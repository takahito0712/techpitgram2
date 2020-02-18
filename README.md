# README

Takahito Arai

画像投稿、コメント、いいね、ができるアプリ。ログイン、ログアウト機能付き。

カリキュラムの理解を深めるために製作したアプリ。既存のものに近いものを作りながらgemの理解も深める。

ruby '2.6.3'
gem 'rails', '~> 5.2.4', '>= 5.2.4.1'

URL https://damp-caverns-70658.herokuapp.com/users/sign_in

ER図はerd.pdf似て記載


## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|name|string|null: false|
### Association
  - has_many :posts, dependent: :destroy
  - has_many :likes
  - has_many :comments

## postsテーブル
|Column|Type|Options|
|------|----|-------|
|caption|string||
|user_id|integer|null: false, foreign_key: true|
### Association
  - belongs_to :user
  - has_many :photos, dependent: :destroy
  - has_many :likes, -> { order(created_at: :desc) }, dependent: :destroy
  - has_many :comments, dependent: :destroy

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|comment|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|post_id|integer|null: false, foreign_key: true|
### Association
  - belongs_to :user
  - belongs_to :post

## likesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|post_id|integer|null: false, foreign_key: true|
### Association
  - belongs_to :user
  - belongs_to :post

## photosテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|post_id|integer|null: false, foreign_key: true|
### Association
  - belongs_to :post

  
