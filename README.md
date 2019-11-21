# README


## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|name|string|null: false|
|image|text||

### Association
- has_many :posts
- has_many :comments
- has_many :likes



## postsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text||
|image|text||
|user_id|integer|null: false, foreign_key: true|
|comment_id|integer|foreign_key: true|
|like_id|integer|foreign_key: true|

### Association
- belongs_to :user
- has_many :comments
- has_many :likes
- belongs_to :category



## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|posts_id|integer|null: false, foreign_key: true|
|coment|text|null: false|

### Association
- belongs_to :post
- belongs_to :user



## likesテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|post_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :post



## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|post_id|integer|null: false, foreign_key: true|
|category_name|string|null: false|

### Association
- has_many :posts
