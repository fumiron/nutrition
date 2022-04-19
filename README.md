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
| calorie       | integer    |                                |
| protein       | integer    |                                |
| fat           | integer    |                                |
| protein       | integer    |                                |
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