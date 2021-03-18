# アプリケーション名
vision_diary

# アプリケーション概要
チームとしての目標を立てることができ、そのビジョンに向かって日記をつけることができる仕事の管理とモチベーション管理ができるアプリケーション

# URL


# テスト用アカウント


# 利用方法
新規登録をする
登録した人を招待してチームを作る
チームの中でビジョンを考え、それに基づいた目標を８つ考える
その８つの目標に基づいた行動目標を具体的に考える
日々の行動、仕事を記録（日記）におこす
ビジョンが達成すると反省をし、次のビジョンを立てる

# 目指した課題解決
日々の仕事の明確化
チームのメンバーの仕事の把握
ビジョンの日々の確認

# 洗い出した要件

## usersテーブル

| Column            |  Type     | Options      |
| ----------------  | --------- | -----------  |
| name              | string    | null: false  |
| name_kana         | string    | null: false  |
| email             | string    | null: false  |
| encrypted_password| string    | null: false  |

###Association

- has_many :visions


## visionsテーブル

| Column            |  Type     | Options      |
| ----------------  | --------- | -----------  |
| vision            | text      | null: false  |
| goal1             | text      | null: false  |
| goal2             | text      | null: false  |
| goal3             | text      | null: false  |
| goal4             | text      | null: false  |
| goal5             | text      | null: false  |
| goal6             | text      | null: false  |
| goal7             | text      | null: false  |
| goal8             | text      | null: false  |
| user              | references| null: false, foreign_key: true  |

###Association

- has_many :user
- has_one :action


## actions

| Column            |  Type     | Options      |
| ----------------  | --------- | -----------  |
| plan1             | text      | null: false  |
| plan2             | text      | null: false  |
| plan3             | text      | null: false  |
| plan4             | text      | null: false  |
| plan5             | text      | null: false  |
| plan6             | text      | null: false  |
| plan7             | text      | null: false  |
| plan8             | text      | null: false  |
| vision            | references| null: false, foreign_key: true  |

- belongs_to :vision
- has_many :reflection

## reflections

| Column            |  Type     | Options      |
| ----------------  | --------- | -----------  |
| date              | datetime  | null: false  |
| do                | text      |              |
| action            | references| null: false, foreign_key: true  |

- belongs_to :vision

# 実装した機能についてのGIFと説明



# 実装予定の機能
グループ作成機能
データ分析機能

# データベース設計






# ローカルでの動作方法

