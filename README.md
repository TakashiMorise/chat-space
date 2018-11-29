# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

# DB設計

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, need index|
|email|string|null: false, unique: true|

### Association
- has_many :messages
- has_many :groups, through: members
- has_many :members

## groupsテーブル

|Column|Type|Options|
|------|----|-------|
|group-name|string|null: false, unique: true, need index|

### Association
- has_many :messages
- has_many :users, through: members
- has_many :members

## membersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true, need index|
|group_id|integer|null: false, foreign_key: true, need index|

### Association
- belongs_to :user
- belongs_to :group

## messagesテーブル

|Column|Type|Option|
|------|----|------|
|body|text|null: false, need index|
|image|string|need index|
|user_id|integer|null: false, foreign_key|
|group_id|integer|null: false, foreign_key|

### Association
- belongs_to :user
- belongs_to :group

----------------

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
