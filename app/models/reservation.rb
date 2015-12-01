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
end
