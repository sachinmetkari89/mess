# == Schema Information
#
# Table name: terms
#
#  id           :integer          not null, primary key
#  title        :string
#  term_text    :text
#  messowner_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Term < ActiveRecord::Base

	 belongs_to :messowner
end
