class PromotionForm < ApplicationRecord
  belongs_to :fix
  belongs_to :level
  has_many :members
  has_many :first,  class_name: 'Interlink', foreign_key: 'first_promform_id'
  has_many :second, class_name: 'Interlink', foreign_key: 'second_promform_id'
end
