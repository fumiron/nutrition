# アプリケーション名

POWER UP

# アプリケーション概要

食品の栄養素を管理することができるアプリケーションです。

35種類の栄養素をグラム数で細かく管理できるため、療養中の方や、健康を意識している方、理想の体づくりを目指している方におすすめです。

# URL

# テスト用アカウント

# 利用方法

# アプリケーションを作成した背景
作成に至った背景としては2点ございます。

1点目は過去に癌を患った母の健康管理に何か役立ちたいと思ったことです。

2点目は自分自身の筋トレの食事管理が苦手なため、まずは栄養素を知ろうということで作成に至りました。

# 洗い出した要件

https://docs.google.com/spreadsheets/d/1n1AjwbpVRf1pNwxoFi0kVHvEaN-qxlC0Ymffyv99hoE/edit?usp=sharing

# 実装した機能についての画像やGIFおよびその説明

# 実装予定の機能

# データベース設計

[![Image from Gyazo](https://i.gyazo.com/30504c3dae7c790266efd578e0b2f6e4.png)](https://gyazo.com/30504c3dae7c790266efd578e0b2f6e4)

# 画面遷移図

[![Image from Gyazo](https://i.gyazo.com/471f07274a1490eb25987d16b129efd5.png)](https://gyazo.com/471f07274a1490eb25987d16b129efd5)

# 開発環境

# ローカルでの動作方法

# 工夫したポイント

# DB 設計

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
| calorie       | integer    |                                |
| protein       | integer    |                                |
| fat           | integer    |                                |
| saturated_fat | integer    |                                |
| n_6_fat       | integer    |                                |
| n_3_fat       | integer    |                                |
| cholesterol   | integer    |                                |
| carbohydrate  | integer    |                                |
| dietary_fiber | integer    |                                |
| vitamin_a     | integer    |                                |
| vitamin_d     | integer    |                                |
| vitamin_e     | integer    |                                |
| vitamin_k     | integer    |                                |
| vitamin_b1    | integer    |                                |
| vitamin_b2    | integer    |                                |
| vitamin_b6    | integer    |                                |
| vitamin_b12   | integer    |                                |
| vitamin_c     | integer    |                                |
| niacin        | integer    |                                |
| folate        | integer    |                                |
| pantothenic   | integer    |                                |
| natrium       | integer    |                                |
| potassium     | integer    |                                |
| calcium       | integer    |                                |
| magnesium     | integer    |                                |
| phosphorus    | integer    |                                |
| iron          | integer    |                                |
| zinc          | integer    |                                |
| copper        | integer    |                                |
| manganese     | integer    |                                |
| iodine        | integer    |                                |
| selenium      | integer    |                                |
| chromium      | integer    |                                |
| molybdenum    | integer    |                                |
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