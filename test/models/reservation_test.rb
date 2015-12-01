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

require 'test_helper'

class ReservationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
