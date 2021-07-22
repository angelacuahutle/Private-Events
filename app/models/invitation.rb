class Invitation < ApplicationRecord
  belongs_to :event
  belongs_to :attendee, class_name:'User', foreign_key:'user_id'
  
  scope :before_today, -> { where 'datetime < ?', Date.today }
  scope :to_come, -> { where 'datetime >= ?', Date.today }
end
