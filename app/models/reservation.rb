# == Schema Information
#
# Table name: reservations
#
#  id         :integer          not null, primary key
#  event_id   :integer
#  name       :string
#  tel        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Reservation < ActiveRecord::Base
  belongs_to :event

  #event_id,name,telは必須項目
  validates :event_id, :name, :tel, presence: true
  #event_idは存在するもののみ
  validates :event_id, inclusion: { in: Event.ids, message: "不正なイベントです"}
  #telは13文字以内
  validates :tel,length: { maximum: 13, message: "電話番号は13文字以内です"}
  #nameは30文字以内
  validates :name,length: { maximum: 50,  message: "お名前は50文字以内です"}
end
