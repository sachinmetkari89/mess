class Calender < ActiveRecord::Base

	 belongs_to :member
	 belongs_to :messowner
end
