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


puts "データを挿入しました"