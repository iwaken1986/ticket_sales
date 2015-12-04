# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Event.delete_all
Event.create!([
  {id: 1, date: "2015-12-01 06:00:00", name: "ガンバ大阪杯", category: "音楽", ticket_count: 1},
  {id: 2, date: "2015-12-10 08:30:00", name: "行列のできる音楽会", category: "クラシックイベント・アート", ticket_count: 5},
  {id: 3, date: "2015-12-24 09:00:00", name: "韓流スタークリスマス握手会", category: "韓流", ticket_count: 2},
  {id: 5, date: "2015-12-02 10:00:00", name: "KONOYO NO OWARI ライブ", category: "音楽", ticket_count: 3},
  {id: 6, date: "2015-12-02 02:00:00", name: "猫と犬", category: "音楽", ticket_count: 8}
])

Event.create!([
  {id: 1, date: "2015-12-01 01:00:00", name: "ガンバ大阪杯", category: "スポーツ", ticket_count: 200},
  {id: 2, date: "2015-12-10 08:30:00", name: "行列のできる音楽会", category: "クラシックイベント・アート", ticket_count: 150},
  {id: 3, date: "2015-12-24 06:00:00", name: "韓流スタークリスマス握手会", category: "韓流", ticket_count: 50},
  {id: 5, date: "2015-12-02 09:00:00", name: "KONOYO NO OWARI ライブ", category: "音楽", ticket_count: 15000},
  {id: 6, date: "2015-12-17 12:00:00", name: "猫と犬", category: "映画", ticket_count: 120},
  {id: 7, date: "2016-01-11 03:00:00", name: "韓流スターとの夢の食事会", category: "韓流", ticket_count: 75},
  {id: 8, date: "2016-01-15 09:00:00", name: "アビスパ記念杯", category: "スポーツ", ticket_count: 1000},
  {id: 9, date: "2016-01-20 01:00:00", name: "ドラコンホール声優サイン会", category: "アニメ", ticket_count: 50},
  {id: 10, date: "2015-01-26 10:00:00", name: "ガトー・ヘンリー演奏会", category: "クラシックイベント・アート", ticket_count: 350},
  {id: 11, date: "2016-01-30 07:30:00", name: "リア充王　劇団SIKI", category: "演劇", ticket_count: 70},
  {id: 12, date: "2016-02-06 06:00:00", name: "ファンタスティック5　-最強の5人-　試写会", category: "映画", ticket_count: 100},
  {id: 13, date: "2016-02-14 07:00:00", name: "ライオンクイーン　劇団SIKI", category: "演劇", ticket_count: 500},
  {id: 14, date: "2016-02-17 09:00:00", name: "ぎゃりーばみゅばみゅ全国ツアーライブ（福岡）", category: "音楽", ticket_count: 6500},
  {id: 15, date: "2016-02-25 01:00:00", name: "北斎絵画展", category: "クラシックイベント・アート", ticket_count: 300},
  {id: 16, date: "2016-03-02 05:00:00", name: "ライトオブジェクト放送開始記念サイン会", category: "アニメ", ticket_count: 50},
  {id: 17, date: "2016-03-03 09:00:00", name: "Az　-全国ツアーライブ-（福岡）", category: "音楽", ticket_count: 50000},
  {id: 18, date: "2016-03-28 00:00:00", name: "バルサミコ記念カップ", category: "スポーツ", ticket_count: 100},
  {id: 19, date: "2016-04-01 06:00:00", name: "UMA　ｖｓ　YOUKAI", category: "映画", ticket_count: 150},
  {id: 20, date: "2016-04-15 04:00:00", name: "俺の杯　劇団 OtoKO", category: "演劇", ticket_count: 60},
  {id: 21, date: "2015-04-26 02:30:00", name: "GARA メジャーデビュー記念サイン会", category: "韓流", ticket_count: 200},
  {id: 22, date: "2016-04-30 15:00:00", name: "マグロスフロンティア原画展", category: "アニメ", ticket_count: 350}
])

Reservation.delete_all
Reservation.create!([
  {event_id: 1, name: "後藤 七世", tel: "090-4384-4452"},
  {event_id: 1, name: "福岡 太郎", tel: "080-4568-1234"},
  {event_id: 1, name: "サガ ントス", tel: "090-6547-5473"}
])

AdminUser.delete_all
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
