# == Schema Information
#
# Table name: calenders
#
#  id            :integer          not null, primary key
#  cal_date      :date
#  cal_no_tiffin :integer          default(1)
#  rate          :integer
#  time          :boolean
#  member_id     :integer
#  messowner_id  :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Calender < ActiveRecord::Base

	 belongs_to :member
	 belongs_to :messowner
end
