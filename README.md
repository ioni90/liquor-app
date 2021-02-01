## README

# :beers:Liquor-app:beers:  
  
![トップページ](https://user-images.githubusercontent.com/69069717/106385980-2d7a9b00-6416-11eb-848c-1d8212c143dd.png)  
  
  
# :beer:アプリケーション概要
### 飲酒した日に、簡単な日記感覚で自分の飲酒状況を記録するためのアプリ  
  昨今のコロナ禍で外出が出来ず、代わりに在宅でお酒を楽しまれる方が増えてきました。  
  ですが一方で悲しいことに過度な飲酒をしたりアルコール依存になってしまったりと悲しいニュースも聞こえてきます…  
  軽い気持ちで日々の飲酒状況を把握して健康的にお酒を楽しんで欲しい！そんなアプリです。  
  <br>
  <br>

  このアプリケーションは以下の２つの目的で開発されました。
  - 健康的な飲酒ライフを提供したい
  - 楽しんで宅飲みしている他の人を覗き見したい
  <br>
  <br>
  
  ## 「健康的な飲酒ライフを提供したい」
  家で1人で飲んでいると昨日一昨日と、過去にどれくらい飲んでいたか分からない時があるかと思います。  
  カレンダーにお酒の種類、量を記録しておくことで自分が最近どれだけ飲んでいたか客観的に見ることが出来ます。「うわぁ…最近飲み過ぎだ、今日は休肝日にしよ」そう思って貰えるかもしれません。
  <br>
  <br>
  
  ## 「楽しんで宅飲みしている他の人を覗き見したい」
  自宅で1人お酒を飲んでいると少し孤独感を感じますが、もちろん宅飲みしている方は世界にたくさんいらっしゃいます！どこら辺に住んでいる人がどんなお酒をどれだけ飲んでいるのか見てみましょう。  
  ランキング形式であなたが他の人よりどれだけ飲んでいるかチェックも出来ます。
  <br>
  <br>
  
  # :tea: 使用言語・技術
  - Ruby
  - Ruby on Rails
  - JavaScript
  - HTML/CSS
  - SQL
  <br>


# :cocktail:利用方法
  * テスト用アカウント
    * email:sample@sample.com  
    * password:mino89  
  <br>
  **1. 飲酒したアルコール情報の記録まで**  
    - アクセスするとトップページに遷移  <br>
    
![ログイン](https://user-images.githubusercontent.com/69069717/106458752-2dd96b80-64d4-11eb-9f65-e34851774ff1.png)  
    - 「ログイン」をクリック  
    - ログインページに遷移した上で、上記テスト用アカウントでログイン  
    - 右上のハンバーガーメニューをクリックしてアルコールを記録するページに遷移  <br>

![アルコール記録ページ](https://user-images.githubusercontent.com/69069717/106454188-b7396f80-64cd-11eb-8e2f-e192abe2988a.gif)  
    - 発注ページで欲しい家具の条件を入力したらオーダーボタンをクリック  
    - トップページのカレンダー上にその日に飲酒したか見れる様になります  
    - カレンダー上の「詳細」リンクから詳細をチェック  <br>

![詳細ページ](https://user-images.githubusercontent.com/69069717/106457432-51031b80-64d2-11eb-88e5-db2f93533749.png)  
    - 必要に応じて削除、編集もできる様になっています  
  <br>
  <br>
  **2. 自分が周りの人と比べどれだけ飲んでいるかチェック**  
    - カレンダー上の「詳細」リンクから詳細ページに遷移  
    - 詳細ページ下部の「ランキングを見る」をクリック  <br>

![ランキング遷移](https://user-images.githubusercontent.com/69069717/106461757-8f033e00-64d8-11eb-9098-eb6c6a3b89e3.gif)  
    - 接種アルコール順に順位が表示されます！<br>
  <br>
  <br>
  **3. 他の人の個人ページを見る**  
    - ランキングページのユーザー名をクリック  <br>

![個人ページへ遷移](https://user-images.githubusercontent.com/69069717/106462984-23ba6b80-64da-11eb-9d55-161c958a1d19.gif)  
    - その方の登録されている情報と最近の飲み方がグラフで表示されています。
  <br>
  <br>
  <br>

# :wine_glass: 目指した課題解決
  | ユーザーストーリーから考える課題           | 課題解決                                      |
  | --- | --- |
  | 在宅になって時間ができてしまったらお酒を飲み過ぎてしまう      | 飲酒状況を客観的に管理できる様にする |
  | 普段どれだけ飲んでいるか分からない                   | 自分がどれだけ飲酒しているかカレンダーで記録する |
  | 他の人と比べて自分がどれだけ飲んでいるか知りたい    | ランキング形式で日本中の人と比較ができる様にする |  
  | 他の人がどのお酒が好きか、どんな風にお酒を飲んでいるか知りたい    | 他人の個人ページにアクセスし飲酒状況が見れる様にする |  
  <br>
  <br>


# :fork_and_knife: 機能一覧
|  機能 | 詳細 |
| --- | --- |
|  ハンバーガーメニュー実装                    | サイト右上にハンバーガーメニューを作成することでページをすっきりさせる          |
|  飲酒状況記録機能              | 自分の飲酒内容を見れる様に情報を記録できる様にする           |
|  カレンダー機能                    | simple_calendarのGemを導入し、飲酒状況をカレンダーで管理できる様にする          |
|  SNSログイン機能                    | Facebook、Googleアカウントでログインできる様にする |
|  ランキング機能           | 飲酒量でランキングが見れる様にする |  
|  グラフ表示機能                | ChartkickのGemを導入し、飲酒状況をグラフ化しより見やすくする                             | 
| カウントダウン機能 | Javascriptで残り制作日数が何日かタイムリーに表示する |
| エラー表示の日本語化 | 入力漏れや間違いが合った際に理解しやすくする |
|  パンクズリスト機能 | GretelのGemを導入し、現在どこのページにいるか把握しやすくする            |
![パンクズリスト](https://user-images.githubusercontent.com/69069717/106469447-a7785600-64e2-11eb-9640-69103fe05057.png)
  <br>
  <br>


# :sake: データベース設計
  ![ER図](https://user-images.githubusercontent.com/69069717/106469995-59b01d80-64e3-11eb-9138-4dab9e7f838f.png)  
  <br>

## :small_blue_diamond: users テーブル  
  
| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| nickname     | string | null: false |
| introduction    | string |  |
| email | string | null: false |
| password | string | null: false |
| gender_id | integer | null: false |
| age_id | integer |  |
| prefecture_id | integer | null: false |
| region_id | integer | null: false |
| favorite_id | integer |  |
  
### Association  

- belongs_to :age
- belongs_to :favorite
- belongs_to :gender
- belongs_to :prefecture
- belongs_to :region
- has_many :drinks
- has_many :sns_credentials  
  <br>
  <br>

##  :small_blue_diamond:Drinks テーブル  

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| user_id             | references     | null: false, foreign_key: true                    |
| drink_date            | datetime       | null: false                    |
| non_drinking          | boolean    | null: false                    |
| type_id            | integer    | null: false                    |
| volume             | integer     |  |
| type2_id         | integer       |  |
| volume2           | integer       |  |
| type3_id | integer    |  |
| volume3          | integer |  |
| type4_id           | integer       |  |
| volume4           | integer       |  |
| type5_id           | integer       |  |
| volume5           | integer       |  |
| total_abv           | integer       |  |
| comment           | text       |  |
  
### Association  

- belongs_to :type
- belongs_to :type2
- belongs_to :type3
- belongs_to :type4
- belongs_to :type5
- belongs_to :user
  <br>
  <br>

## :small_blue_diamond: CreateSnsCredentials テーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| provider | string |  |
| uid   | string |  |
| user    | references       |  foreign_key: true |

### Association

- belongs_to :user, optional: true  
  <br>
  <br>
  

## :tropical_drink: ローカルでの動作方法
  % git clone https://github.com/ioni90/liquor-app.git  
  % cd liquor-app  
  % bundle install  
  % rails db:create  
  % rails db:migrate  
  % rails s  
  :arrow_right: http://localhost:3000
  <br>
  <br>

## :coffee: 開発環境  
* VScode
* Ruby 2.6.6
* Rails 6.0.3.4
* mysql2 0.5.3
* JavaScript
* gem 3.0.3