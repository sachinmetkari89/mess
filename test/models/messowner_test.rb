# == Schema Information
#
# Table name: messowners
#
#  id                                   :integer          not null, primary key
#  messowner_first_name                 :string
#  messowner_last_name                  :string
#  messowner_mobile_no                  :string
#  messowner_alt_mobile_no              :string
#  messowner_rate_per_month             :string
#  messowner_rate_per_tiffin            :string
#  messowner_time_morning_from          :string
#  messowner_time_morning_to            :string
#  messowner_time_evening_from          :string
#  messowner_time_evening_to            :string
#  messowner_address                    :string
#  messowner_tiffin_cancle_time_morning :string
#  messowner_tiffin_cancle_time_evening :string
#  email                                :string           default(""), not null
#  encrypted_password                   :string           default(""), not null
#  reset_password_token                 :string
#  reset_password_sent_at               :datetime
#  remember_created_at                  :datetime
#  sign_in_count                        :integer          default(0), not null
#  current_sign_in_at                   :datetime
#  last_sign_in_at                      :datetime
#  current_sign_in_ip                   :string
#  last_sign_in_ip                      :string
#  created_at                           :datetime
#  updated_at                           :datetime
#

require 'test_helper'

class MessownerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
