# == Schema Information
#
# Table name: events
#
#  id           :integer          not null, primary key
#  date         :datetime
#  name         :string
#  category     :string
#  ticket_count :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Event < ActiveRecord::Base
    has_many :reservations

  #date,name,category,ticket_countは必須項目
  validates :date, :name, :category, :ticket_count, presence: true
  #categoryは存在するもののみ
  validates :category, inclusion: {in: %w{ 音楽 スポーツ 映画 演劇 クラシックイベント・アート アニメ 韓流}}
  #ticket_countは数字のみ
  validates :ticket_count, numericality: true
  #nameは50文字以内
  validates :name,length: { maximum: 50 }
end
