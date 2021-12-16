# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "データを挿入します"
MaterialKind.delete_all
MaterialKind.create!(name: "ドットキャラクター")
MaterialKind.create!(name: "ドットアイテム")
MaterialKind.create!(name: "ドット背景")
MaterialKind.create!(name: "ノベルキャラクター")
MaterialKind.create!(name: "ノベルアイテム")
MaterialKind.create!(name: "ノベル背景")
MaterialKind.create!(name: "3Dキャラクター")
MaterialKind.create!(name: "3Dアイテム")
MaterialKind.create!(name: "3D背景")
MaterialKind.create!(name: "音楽")

MaterialGenre.delete_all
MaterialGenre.create!(name: "アクション")
MaterialGenre.create!(name: "シューティング")
MaterialGenre.create!(name: "アドベンチャー")
MaterialGenre.create!(name: "レース")
MaterialGenre.create!(name: "パズル")
MaterialGenre.create!(name: "シミュレーション")
MaterialGenre.create!(name: "サンドボックス")
MaterialGenre.create!(name: "ロールプレイング")
MaterialGenre.create!(name: "テーブル")

User.create!(name: "ひろし", email: "hiroshi@hiroshi", password: "abcdefg", check_job: 1, introduction: "ひろしです。")
User.create!(name: "たけし", email: "takeshi@takeshi", password: "hijklmn", check_job: 2, introduction: "たけしです。")
User.create!(name: "トンガリ", email: "tongari@tongari", password: "opqrstu", check_job: 1, introduction: "たくみです。")
User.create!(name: "たかし", email: "takashi@takashi", password: "vwxyzab", check_job: 2, introduction: "たけしです。")

Request.create!(title: "ノベルゲーム背景作成", material_kind_id:6, delivery_date: "2021-12-01 00:00:00", user_id: 1, specification: "背景を描いてほしい")

RequestDetail.create!(request_id: 1,material_genre_id: 2,material_size: "100x100", specification: "居間の背景")
RequestDetail.create!(request_id: 1,material_genre_id: 3,material_size: "100x100", specification: "森の背景")

Request.create!(title: "RPGキャラクター作成", material_kind_id:1, delivery_date: "2022-01-01 00:00:00", user_id: 1, specification: "RPGのキャラクターを作成してほしい")

RequestDetail.create!(request_id: 2,material_genre_id: 1,material_size: "100x100", specification: "主人公キャラクター イメージカラーは赤")
RequestDetail.create!(request_id: 2,material_genre_id: 1,material_size: "100x100", specification: "ヒロインキャラクター イメージカラーはピンク")
RequestDetail.create!(request_id: 2,material_genre_id: 1,material_size: "100x100", specification: "敵キャラクター 怪物イメージ")

Request.create!(title: "ノベルキャラクター作成", material_kind_id:4, delivery_date: "2023-01-01 00:00:00", user_id: 3, specification: "ノベルゲームのキャラクターを作成してほしい")

RequestDetail.create!(request_id: 3,material_genre_id: 6,material_size: "100x100", specification: "たけし イメージカラーはオレンジ")
RequestDetail.create!(request_id: 3,material_genre_id: 6,material_size: "100x100", specification: "前髪 イメージカラーは緑")
RequestDetail.create!(request_id: 3,material_genre_id: 6,material_size: "100x100", specification: "しずか イメージカラーはピンク")
RequestDetail.create!(request_id: 3,material_genre_id: 6,material_size: "100x100", specification: "めがね イメージカラーは黄色")
RequestDetail.create!(request_id: 3,material_genre_id: 6,material_size: "100x100", specification: "たぬき イメージカラーは青")

MaterialStorage.create!(file_name: "image0.png", title: "NFT", user_id: 2, material_kind_id: 4, material_genre_id: 1)
MaterialStorage.create!(file_name: "image1.png", title: "スペースペンギン", user_id: 2, material_kind_id: 3, material_genre_id: 2)
MaterialStorage.create!(file_name: "image2.png", title: "オオナンショウ", user_id: 4, material_kind_id: 2, material_genre_id: 3)
MaterialStorage.create!(file_name: "image3.png", title: "エビフライ", user_id: 4, material_kind_id: 1, material_genre_id: 4)

puts "データを挿入しました"