# == Schema Information
#
# Table name: members
#
#  id                     :integer          not null, primary key
#  mem_first_name         :string
#  mem_last_name          :string
#  mem_mobile_no          :string
#  mem_alt_mobile_no      :string
#  mem_address            :string
#  mem_token              :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  created_at             :datetime
#  updated_at             :datetime
#

require 'test_helper'

class MemberTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
