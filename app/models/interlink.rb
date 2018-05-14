class Interlink < ApplicationRecord
  belongs_to :member
  belongs_to :first_promform, class_name: 'PromotionForm'
  belongs_to :second_promform, class_name: 'PromotionForm'
  belongs_to :level
end
