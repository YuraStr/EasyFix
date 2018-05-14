class Level < ApplicationRecord
  has_many :from, :class_name => 'ApproveInformation', :foreign_key => 'from_level_id'
  has_many :to,   :class_name => 'ApproveInformation', :foreign_key => 'to_level_id'
end
