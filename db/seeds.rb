# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "データを挿入します"
MaterialKind.delete_all
MaterialKind.create!(name: "RPG")
MaterialKind.create!(name: "ドット絵")
MaterialKind.create!(name: "ノベルゲーム")
MaterialKind.create!(name: "3D")

MaterialGenre.delete_all
MaterialGenre.create!(name: "音楽")
MaterialGenre.create!(name: "背景")
MaterialGenre.create!(name: "キャラクター")

puts "データを挿入しました"