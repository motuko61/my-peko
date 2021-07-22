# アプリケーション名
  MyPeko

 # アプリケーション概要
  自分だけのグルメメモ
  詳細部分を選択式にすることで簡単に飲食店の登録ができる。グルメアプリに載ってないような店舗をチェックしたり、リピートしたい店舗を忘れないようにしたりできる。

# URL
  https://my-peko.herokuapp.com/

# テスト用アカウント
  Basic認証
    user:admin
    password:2222
  ログイン
    user:kuma@com
    password:kuma111

# 利用方法
  簡単に情報入力して、行った店舗を記録できる

# 洗い出した要件
  ユーザー管理機能（機能）    
    ユーザー管理がしやすくなるため （目的）  
    新規登録、ログアウト、ログイン機能(詳細)
    登録画面からニックネームとメールアドレスとパスワードと確認用パスワードの登録をする(ストーリー)
    1日(見積もり) 
    優先順位：高

  投稿機能(機能)
    投稿したいものを投稿するため(目的)
    画像の投稿、コメント機能、アクティブハッシュでの選択、マップとの連動 (詳細)
    投稿画面からフォームに沿って投稿をする。コメント、マップとの連動以外は必須項目とし、入力漏れがあると登録できない(ストーリー)
    ３〜４日(見積もり)
    優先順位：高

  編集機能(機能)
    投稿したものを編集するため(目的)
    画像、コメント、選択、マップの位置の編集(詳細)
    投稿画面からフォームに沿って投稿をしたものを一部だけでも編集し、再度投稿ができる(ストーリー)
    2日(見積もり)
    優先順位：中

  削除機能(機能)
    投稿したものを削除するため(目的)
    複数枚の画像、コメント、選択、マップの位置、投稿したもの全てを削除する(詳細)
    投稿した記事を削除ボタンから削除することができる(ストーリー)
    3時間(見積もり)
    優先順位：中

  検索機能(機能)
    探したいものをすぐに探すため(目的)
    コメント、タグ、選択から欲しい情報を検索する(詳細)
    検索フォームからワードを入れて検索することができる(ストーリー)
    3日〜4日(見積もり)
    優先順位：中

  お気に入り機能(機能)
    お気に入りに登録して再度見たい時にすぐ見るため(目的)
    気に入った投稿に印をつける(詳細)
    お気に入りの投稿に印をつけることですぐにわかる(ストーリー)
    3日(見積もり)
    優先順位：低

  評価機能(機能)
    自分の感じたものを評価するため(目的)
    投稿時に自分が感じたものの評価で再度利用するかわかる(詳細)
    投稿記事の★マークを押すことで5点満点中何点だったかすぐわかる(ストーリー)
    4日(見積もり)
    優先順位：低

  mapAPI(機能)
    場所をわかりやすくするため(目的)
    場所の把握ができる(詳細)
    googlemapと連動してるので場所の把握が簡単にできる(ストーリー)
    4日(見積もり)    
    優先順位：低    

# 実装した機能
  ユーザー管理機能
   ログアウト機能[![Image from Gyazo](https://i.gyazo.com/acea7d4b939059d9efe8d72358880fdd.gif)](https://gyazo.com/acea7d4b939059d9efe8d72358880fdd)
   新規登録機能[![Image from Gyazo](https://i.gyazo.com/864acf3b5475ede9f25c75c47f7d2840.gif)](https://gyazo.com/864acf3b5475ede9f25c75c47f7d2840)

  投稿機能
    [![Image from Gyazo](https://i.gyazo.com/c850d154a6d549390c3c252c4ce5d36b.gif)](https://gyazo.com/c850d154a6d549390c3c252c4ce5d36b)

  編集機能
   [![Image from Gyazo](https://i.gyazo.com/fea75f35dcd60dd9a55115103dfc7b7d.gif)](https://gyazo.com/fea75f35dcd60dd9a55115103dfc7b7d)

  削除機能
    [![Image from Gyazo](https://i.gyazo.com/eba46efbc4fd777988e213f90162de23.gif)](https://gyazo.com/eba46efbc4fd777988e213f90162de23)


# 実装予定の機能     
  検索機能,お気に入り機能,評価機能,mapAPI

# ER図
  [![Image from Gyazo](https://i.gyazo.com/0174e9c9e363164a99628a22e1b7bb44.png)](https://gyazo.com/0174e9c9e363164a99628a22e1b7bb44)

# テーブル設計

## usersテーブル

| Column                | Type   | Options                   |
| ----------------------| ------ | --------------------------|
| nickname              | string | null: false               |
| email                 | string | null: false, unique :true | 
| encrypted_password    | string | null: false               |

### Association
- has_many :posts
- has_many :messages

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
- has_many :messages


## messagesテーブル
| Column          | Type       | Options                        |
| ----------------| -----------| -------------------------------|
| message         | text       | null: false                    |
| user            | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :post