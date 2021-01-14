# README
1「アプリケーションの概要」
　自分に合った参考書を見つけることができ、自分が使った参考書のレビューを投稿できるサービスです。

2「このサービスの機能一覧」
　・記事投稿機能
　・記事保存機能 (ユーザアイコンクリックでユーザ詳細画面に遷移。「保存した投稿から参照可能」)
　・記事編集機能
　・画像投稿機能
　・投稿削除機能
　・サインアップ機能
　・ユーザ情報編集機能
　・ログイン、ログアウト機能
　・認証機能
　・本検索機能（楽天API）

3「使用した技術」
　・フロント周りにHTML/CSS JS　bootstrap
  ・サーバサイドにruby on rails
  ・ソース管理はGit
　・herokuにデプロイ
　・githubにアップ
また業務で使用されそうなGemには前もって使ってみたかったので、kaminariやcarrierwave、pry-byebug
などを使用しました。
またAPIも使用したかったのでRakutenAPIも使用してみました。
Gitでは、Push,pull, merge, log, status, diff, cloneなどを使用しました。

難しかったこと
一番苦労したこととしては、postアクションがgetと認識されrouting errorになってしまったことです。

解決法は、プロジェクト内でjQueryが機能していなかったのが問題でした。
手順としては、
　- rails webpacker:install
  - 質問には全部Yで回答（不安だったので検証用ブランチでおこなった）
- この記事の手順でjqueryを導入
  - https://qiita.com/masahisa/items/eaacb0c3b82f4a11fc13


更新情報
　10/24
  home/about.thml.erbに背景画像設定

  10/26
  本のタイトル入力画面を追加


  10/28
  投稿時に画像は必須添付に変更→ユーザが本を見つけやすくする

