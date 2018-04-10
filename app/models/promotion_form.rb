class PromotionForm < ApplicationRecord
  belongs_to :fix
  has_one :level
end
