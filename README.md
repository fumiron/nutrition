# アプリケーション名

POWER UP

# アプリケーション概要

食品の栄養素を管理することができるアプリケーションです。

35種類の栄養素をグラム数で細かく管理できるため、療養中の方や、健康を意識している方、理想の体づくりを目指している方におすすめです。

# URL

http://35.77.255.121/

# テスト用アカウント

Basic認証ID: fumiron

Basic認証Pass: 1250

ユーザー名 kobayashi

パスワード aaa111

# アプリケーションを作成した背景
作成に至った背景としては2点ございます。

1点目は過去に癌を患った母の健康管理に何か役立ちたいと思ったことです。

2点目は自分自身の筋トレの食事管理が苦手なため、まずは栄養素を知ろうということで作成に至りました。

# 洗い出した要件

https://docs.google.com/spreadsheets/d/1n1AjwbpVRf1pNwxoFi0kVHvEaN-qxlC0Ymffyv99hoE/edit?usp=sharing

# 利用方法

新規登録を行う

[![Image from Gyazo](https://i.gyazo.com/f56827a9b04e90a9fbbdff463a382d2f.jpg)](https://gyazo.com/f56827a9b04e90a9fbbdff463a382d2f)

トップページの食品登録ボタンから、食品名・栄養素を入力し登録する

[![Image from Gyazo](https://i.gyazo.com/0668e7a1db7212d368cf861677d4084e.jpg)](https://gyazo.com/0668e7a1db7212d368cf861677d4084e)

マイページにて登録食品・お気に入り食品の確認(表示は主要栄養素のみ)

[![Image from Gyazo](https://i.gyazo.com/c0e456482ea4147b653471e0a9d78fcd.jpg)](https://gyazo.com/c0e456482ea4147b653471e0a9d78fcd)

詳細ページでは登録食品のすべての栄養素を表示

[![Image from Gyazo](https://i.gyazo.com/4c923ec818da51dd0f0c029317851efa.gif)](https://gyazo.com/4c923ec818da51dd0f0c029317851efa)

トップページの食品検索ボタンから登録した食品の検索ができる

[![Image from Gyazo](https://i.gyazo.com/c40f28f0ed8c4e1b907820503d4ff613.gif)](https://gyazo.com/c40f28f0ed8c4e1b907820503d4ff613)

# 実装予定の機能

お気に入り登録ボタンを非同期通信へ実装する

あらかじめ主要な食品を登録し、検索フォームから検索できるようにする

新規登録時に年齢を入力し、一般的にどの程度の栄養をとったほうが良いかマイページへ表示する


# 開発環境

## 使用言語

Ruby on Rails

 devise

 Rspec

 Rubocop

HTML/CSS

## デプロイ方法

EC2

## 開発環境

Vsual Studio code

GitHub

AWS

# 工夫したポイント

未完成ではありますが、「理解するのに時間がかかる」「説明書を読まないと使えない」のような状態にならないよう、シンプルな機能・デザインを心がけましました。

# DB 設計

[![Image from Gyazo](https://i.gyazo.com/30504c3dae7c790266efd578e0b2f6e4.png)](https://gyazo.com/30504c3dae7c790266efd578e0b2f6e4)

## users table

| Column             | Type     | Options     |
|--------------------|----------|-------------|
| nickname           | string   | null: false |
| encrypted_password | string   | null: false |

### Association

* has_many :foods
* has_many :favorites

## foods table

| Column        | Type       | Options                        |
|---------------|------------|--------------------------------|
| name          | string     | null: false                    |
| calorie       | float      |                                |
| protein       | float      |                                |
| fat           | float      |                                |
| saturated_fat | float      |                                |
| n_6_fat       | float      |                                |
| n_3_fat       | float      |                                |
| cholesterol   | float      |                                |
| carbohydrate  | float      |                                |
| dietary_fiber | float      |                                |
| vitamin_a     | float      |                                |
| vitamin_d     | float      |                                |
| vitamin_e     | float      |                                |
| vitamin_k     | float      |                                |
| vitamin_b1    | float      |                                |
| vitamin_b2    | float      |                                |
| vitamin_b6    | float      |                                |
| vitamin_b12   | float      |                                |
| vitamin_c     | float      |                                |
| niacin        | float      |                                |
| folate        | float      |                                |
| pantothenic   | float      |                                |
| biotin        | float      |                                |
| sodium        | float      |                                |
| potassium     | float      |                                |
| calcium       | float      |                                |
| magnesium     | float      |                                |
| phosphorus    | float      |                                |
| iron          | float      |                                |
| zinc          | float      |                                |
| copper        | float      |                                |
| manganese     | float      |                                |
| iodine        | float      |                                |
| selenium      | float      |                                |
| chromium      | float      |                                |
| molybdenum    | float      |                                |
| salt          | float      |                                |
| user          | references | null: false, foreign_key: true | 

### Association

- belongs_to :user
- has_many :favorites

## favorites table

| Column      | Type       | Options                        |
|-------------|------------|--------------------------------|
| user        | references | null: false, foreign_key: true |
| food        | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :food