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

  #categoryは存在するもののみ

  #ticket_countは数字のみ

  #nameは50文字以内
end
