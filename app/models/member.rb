class Member < ApplicationRecord
  belongs_to :plan

  validates_presence_of :first_name, :last_name, :dob
end
