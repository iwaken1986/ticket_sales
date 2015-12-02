# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Event.create!([
  {id: 1, date: "2015-12-01 06:00:00", name: "ガンバ大阪杯", category: "音楽", ticket_count: 1},
  {id: 2, date: "2015-12-10 08:30:00", name: "行列のできる音楽会", category: "クラシックイベント・アート", ticket_count: 5},
  {id: 3, date: "2015-12-24 09:00:00", name: "韓流スタークリスマス握手会", category: "韓流", ticket_count: 2},
  {id: 5, date: "2015-12-02 10:00:00", name: "KONOYO NO OWARI ライブ", category: "音楽", ticket_count: 3},
  {id: 6, date: "2015-12-02 02:00:00", name: "猫と犬", category: "音楽", ticket_count: 8}
])
Reservation.create!([
  {event_id: 1, name: "後藤 七世", tel: "090-4384-4452"},
  {event_id: 1, name: "福岡 太郎", tel: "080-4568-1234"},
  {event_id: 1, name: "サガ ントス", tel: "090-6547-5473"}
])