class Invitation < ApplicationRecord
  belongs_to :event
  belongs_to :attendee, class_name: 'User', foreign_key: 'user_id'

  scope :before_today, -> { where 'date < ?', Date.today }
  scope :to_come, -> { where 'date >= ?', Date.today }
end
