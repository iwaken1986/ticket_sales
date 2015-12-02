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

require 'test_helper'

class EventTest < ActiveSupport::TestCase

  def setup
    @event = events(:one)
  end

  #date,name,category,ticket_countは必須項目
  test "必須項目 date" do
    @event.date = nil
    assert @event.invalid?

    @event.date = "2015-12-01 05:03:58"
    assert @event.valid?
  end

  test "必須項目 name" do
    @event.name = nil
    assert @event.invalid?

    @event.name = "フィルハーモニー管弦楽団イベント"
    assert @event.valid?
  end

  test "必須項目 category" do
    @event.category = nil
    assert @event.invalid?

    @event.category = "音楽"
    assert @event.valid?
  end

  test "必須項目 ticket_count" do
    @event.ticket_count = nil
    assert @event.invalid?

    @event.ticket_count = 1000
    assert @event.valid?
  end

  #categoryは存在するもののみ
  test "categoryは存在するもののみ" do
    @event.category = "変なカテゴリー"
    assert @event.invalid?

    @event.category = "音楽"
    assert @event.valid?
  end

  #ticket_countは数字のみ
  test "ticket_count integer" do
    @event.ticket_count = "１２３４５"
    assert @event.invalid?

    @event.ticket_count = 12345
    assert @event.valid?
  end

  #nameは50文字以内
  test "nameは50文字以内" do
    @event.name = "１２３４５６７８９０１２３４５６７８９０１２３４５６７８９０１２３４５６７８９０１２３４５６７８９０１"
    assert @event.invalid?

    @event.name = "１２３４５６７８９０１２３４５６７８９０１２３４５６７８９０１２３４５６７８９０１２３４５６７８９０"
    assert @event.valid?
  end

end
