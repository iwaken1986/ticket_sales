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

  def setup
    @reservation = reservations(:one)
    @event = events(:one)
    @reservation.event_id = @event.id
  end

  #event_id,name,telは必須項目
  test "必須項目 event_id" do
    @reservation.event_id = nil
    assert @reservation.invalid?

    @reservation.event_id = @event.id
    assert @reservation.valid?
  end

  test "必須項目 name" do
    @reservation.name = nil
    assert @reservation.invalid?

    @reservation.name = "田中 三郎"
    assert @reservation.valid?
  end

  test "必須項目 tel" do
    @reservation.tel = nil
    assert @reservation.invalid?

    @reservation.tel = "090-8888-7777"
    assert @reservation.valid?
  end

  #event_idは存在するもののみ
  test "event_idは存在するもののみ" do
    @reservation.event_id = 999999
    assert @reservation.invalid?

    @reservation.event_id = @event.id
    assert @reservation.valid?
  end

  #telは13文字以内
  test "telは13文字以内" do
    @reservation.tel = "12345678901234"
    assert @reservation.invalid?

    @reservation.tel = "1234567890123"
    assert @reservation.valid?
  end

  #nameは30文字以内
  test "nameは30文字以内" do
    @reservation.name = "１２３４５６７８９０１２３４５６７８９０１２３４５６７８９０１"
    assert @reservation.invalid?

    @reservation.name = "１２３４５６７８９０１２３４５６７８９０１２３４５６７８９０"
    assert @reservation.valid?
  end

end
