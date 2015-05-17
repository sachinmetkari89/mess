# == Schema Information
#
# Table name: calenders
#
#  id            :integer          not null, primary key
#  cal_date      :date
#  cal_no_tiffin :integer
#  cal_rate      :integer
#  cal_time      :boolean
#  cal_old       :text
#  member_id     :integer
#  messowner_id  :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class CalenderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
