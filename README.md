# プロジェクト名：『Anaba』
<img width="637" alt="image" src="https://github.com/user-attachments/assets/64fe7f6d-d397-4091-ba1e-6de90eba233d" />

# 目次
- [サービス概要](#-サービス概要)
- [サービスURL](#-サービスurl)
- [サービス開発の背景](#-サービス開発の背景)
- [機能紹介](#-機能紹介)
- [技術構成について](#-技術構成について)
  - [使用技術](#使用技術)
  - [ER図](#er図)

# 🗾 サービス概要
〜 あなたの知らない景色がそこにある。混雑を避けた穴場スポット共有サービス 〜

『Anaba』は、写真とコメント、スポット名（穴場の名前）と共に、自分の穴場の景色を投稿し、他のユーザーと共有できるサービスです。
ユーザーは、都道府県、タグ、スポット名（穴場の名前）で投稿された場所を検索することができます。
登録された穴場に対して、各ユーザーはタイトル、写真とコメントの投稿、5段階評価（おすすめ度、混雑の少なさの2つの評価）を行えます。

# 🌏 サービスURL
### https://www.anabashare.com

# 💻 フロントエンドリポジトリ
### フロントエンド: https://github.com/kazukiSaga/anaba.front

# 📖 サービス開発の背景
コロナ禍により、人混みが避けられない観光地や旅行のハードルが高くなったことを実感しました。
また、コロナウイルスの終息後も、円安による外国人観光客の増加で観光地は依然として混雑しています。

このような状況で、人混みを避けつつ、まだ有名になっていない穴場スポットを楽しめるサイトがあれば、多くの人が安全で快適に観光を楽しめるのではないかと考えました。

自分自身が新しい場所を発見する喜びを多くの人と共有したいという思いから、このサービスを立ち上げたいと考えています。

# 💻 機能紹介
| ユーザー登録 / ログイン |
| :---: | 
| [![Image from Gyazo](https://i.gyazo.com/e82a4285a593f1a36fd7d221253be07e.gif)](https://gyazo.com/e82a4285a593f1a36fd7d221253be07e) |
| <p align="left">『メールアドレス』『パスワード』『確認用パスワード』を入力してユーザー登録を行います。ユーザー登録後は、自動的にログイン処理が行われるようになっており、そのまま直ぐにサービスを利用する事が出来ます。</p> |

| スポット登録機能 |
| :---: | 
| <img width="1710" alt="image" src="https://github.com/user-attachments/assets/1061dd27-07f9-460b-ada0-df641537f071" /> |
| <p align="left">自分が見つけた穴場スポットを『スポット名』『住所』『説明』『タグ』と共に登録できます。ログイン済みのユーザーは、登録したスポットの編集が可能です。</p> |

| 写真・コメント投稿機能 |
| :---: | 
| <img width="1710" alt="image" src="https://github.com/user-attachments/assets/a9d82da5-2199-4e98-b088-b935a674758f" /> |
| <p align="left">登録された穴場スポットに対して、各ユーザーはタイトル、写真とコメントを投稿することができます。投稿された写真やコメントは投稿詳細ページで閲覧できます。</p> |

| 評価機能 |
| :---: | 
| <img width="1710" alt="image" src="https://github.com/user-attachments/assets/09bf4b47-2fb9-4d2e-a9be-4bf17fc9883c" /> |
| <p align="left">登録された穴場スポットに対して、『おすすめ度』『混雑の少なさ』の2つの項目について5段階評価（セレクトボックス形式）を行うことができます。</p> |

| 検索機能 |
| :---: | 
| <img width="1710" alt="image" src="https://github.com/user-attachments/assets/1929b602-b918-42a0-8675-64b9e7c414cc" /> |
| <p align="left">『スポット名』『タグ』『都道府県』で投稿された穴場スポットを検索することができます。スポット名検索では、入力しながら候補が表示されます。</p> |

| Googleマップ連携機能 |
| :---: | 
| [![Image from Gyazo](https://i.gyazo.com/2502198d2f0aab067e17113efed4c4ec.gif)](https://gyazo.com/2502198d2f0aab067e17113efed4c4ec) |
| <p align="left">登録された穴場スポットはGoogleマップ上にピンで表示され、カーソルを合わせるとスポット名と評価がポップアップで表示されます。ピンをクリックすると、その穴場の詳細ページに移動し、説明や写真、コメントの一覧などの情報を閲覧できます。</p> |

# 🔧 技術構成について
## 使用技術
| カテゴリ | 技術内容 |
| --- | --- | 
| サーバーサイド | Ruby on Rails (API モード) |
| フロントエンド | Vue.js 3 |
| UIライブラリ | Vuetify |
| 認証 | DeviseToken Auth |
| Web API | Google Maps API、Google Maps Geocoding API |
| データベースサーバー | PostgreSQL |
| バージョン管理ツール | GitHub |
| CI/CD | GitHub Action |
| インフラ | Vercel（フロントエンド）、Render.com（バックエンド）、AWS S3（画像ストレージ） |
| テスト | rspec |

## ER図
[ER図のリンク](https://drive.google.com/file/d/1COQNKC9mRp6apwWSm0Mf6W9a0WITyTIS/view?usp=sharing)

