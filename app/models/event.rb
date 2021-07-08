class Event < ApplicationRecord
  #belongs_to :user, class_name: User, foreign_key: :creator 
  belongs_to :creator, class_name: 'User'
end
