# README
<img width="1440" alt="スクリーンショット 2020-06-02 0 37 42" src="https://user-images.githubusercontent.com/57932445/83425866-48e96c80-a469-11ea-8618-0faf10444675.png">

# アプリ名/techpitgram


## 製作者/Takahito Arai

## 本番環境/Heroku  

## 機能/画像投稿、コメント、いいね、ができるアプリ。ログイン、ログアウト機能付き。

制作背景/カリキュラムの理解を深めるために製作したアプリ。既存のものに近いものを作りながらgemの理解も深める。また、昨今注目のサービスに近い物を作ることによって必要な技術、かかる時間、実装の楽しさなどを知る

工夫したところ/「いいね！」「コメント」のリアルタイムでの入力、削除は投稿アプリの１番の魅力であると思っているので狙い通りに動作するようにいろいろ参考にした

使用技術/ruby '2.6.3'
gem 'rails', '~> 5.2.4', '>= 5.2.4.1'

課題や今後実装したい機能/「いいね」をしてくれた人と投稿者がしてくれた人と投稿者がコメントのやりとりをできるようにする　　あとは見た目をもっと華やかにする


URL https://damp-caverns-70658.herokuapp.com/users/sign_in

ER図はerd.pdfファイルにて記載


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

  
