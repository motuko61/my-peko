# テーブル設計

## usersテーブル

| Column                | Type   | Options                   |
| ----------------------| ------ | --------------------------|
| nickname              | string | null: false               |
| email                 | string | null: false, unique :true | 
| encrypted_password    | string | null: false               |

### Association
- has_many :posts
- has_many :comments

## postsテーブル
| Column          | Type       | Options                        |
| ----------------| -----------| -------------------------------|
| name            | string     | null: false                    |
| user            | references | null: false, foreign_key: true |
| category_id     | integer    | null: false                    |
| price_id        | integer    | null: false                    |
| scene_id        | integer    | null: false                    |
| teach_id        | integer    | null: false                    |

### Association
- belongs_to :user
- has_many :comments


## commentsテーブル
| Column          | Type       | Options                        |
| ----------------| -----------| -------------------------------|
| message         | text       | null: false                    |
| user            | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :post