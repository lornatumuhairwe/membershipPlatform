class Plan < ApplicationRecord
  has_many :members

  validates_presence_of :name
  validates_presence_of :start_date, :end_date, if: :recurrent?

  enum category: [:recurrent, :time_limited]
end
