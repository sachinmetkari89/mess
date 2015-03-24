class Member < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_and_belongs_to_many :messowners

         before_validation :set_password
         def set_password
         	p "fggfhgfh"
         	self.password="123456789"
         end
end
