class ActionInformation < ApplicationRecord
  belongs_to :fix
  belongs_to :from_level, class_name: 'Level'
  belongs_to :to_level, class_name: 'Level'
  belongs_to :user
end
