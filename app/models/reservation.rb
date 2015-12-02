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

  #event_idは存在するもののみ

  #telは13文字以内

  #nameは30文字以内
end
