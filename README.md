# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

#  NAGANO CAKE  

## トップページ

<img width="1000" alt="スクリーンショット 2020-09-25 18 30 56" src="https://user-images.githubusercontent.com/67743439/94252227-99c42a00-ff5e-11ea-86f1-722f5c19b6c2.png">  

## 概要と背景

長野県にある小さな洋菓子店『ながのCAKE』の商品通販するためのECサイト  
SNSをキッカケに全国から注文が来るようになった。メール、DM等で受注する形を取っていたが情報管理が煩雑になってしまうという問題の解決のため、情報管理を含んだECサイトを開設  

## 使い方  

・会員側で会員登録を行い、各商品をカートを使用して購入が可能  
・管理者側でジャンルと商品の新規登録、販売商品の変更が可能  

## 機能一覧

 ### ー会員側機能ー  
	
  ⚪︎顧客による会員登録、ログイン・ログアウト、退会。  
  ⚪︎会員のログインはメールアドレスとパスワードによる認証。  
  ⚪︎1度に複数の商品の購入、カート内の商品は個数変更・削除が可能。  
  ⚪︎会員はマイページからユーザ情報の閲覧・編集、注文履歴の閲覧、配送先の閲覧・編集が可能。  
  ⚪︎購入後に購入後メール機能。
  ⚪︎注文履歴には購入履歴ごとに下記の情報が表示されます。  
    &emsp;・購入日  
    &emsp;・購入内容(商品名、個数、金額など)  
    &emsp;・購入価格合計  
    &emsp;・送付先  
    &emsp;・ステータス(入金待ち/発送待ち/発送済み)  
  ⚪︎会員登録時、下記の情報をユーザ情報として入力できます。  
    &emsp;・名前(姓・名)  
    &emsp;・名前(カナ姓・カナ名)  
    &emsp;・郵便番号  
    &emsp;・住所  
    &emsp;・電話番号  
    &emsp;・メールアドレス  
    &emsp;・パスワード  

 ### ー管理者側機能ー  
	
  ⚪︎管理者用メールアドレスとパスワードでログイン。  
  ⚪︎商品の新規追加、編集、販売停止。  
  ⚪︎商品には下記の情報を登録  
    &emsp;・商品名  
    &emsp;・商品説明文  
    &emsp;・ジャンル  
    &emsp;・税抜価格  
    &emsp;・商品画像  
    &emsp;・販売ステータス(販売中/売切れ)  
  ⚪︎登録されている会員情報の閲覧、編集、退会処理。  
  ⚪︎会員の注文履歴を一覧・詳細表示  
  ⚪︎注文履歴には注文ごとに下記の情報を表示  
    &emsp;・購入者  
    &emsp;・購入日  
    &emsp;・購入内容  
    &emsp;・請求額合計  
    &emsp;・送付先  
    &emsp;・注文ステータス(入金待ち/入金済み/発送済み)  
    &emsp;・製作ステータス(製作待ち/製作中/製作完了)  

## 言語  

HTML/CSS/Javascript/ruby（2.5.7）/  

## フレームワーク  

Ruby on rails (5.2.4)  

## Gem  

devise/jquery-rails/pry-rails/refile/refile-mini-magick/bootstrap-sass/kaminari/dotenv-rails  

## 作成者  
くさかべ　https://github.com/taka12natu  
たけ　https://github.com/kodake29  
ひでと　https://github.com/Hideto321  
かみお　https://github.com/takumimzd  
