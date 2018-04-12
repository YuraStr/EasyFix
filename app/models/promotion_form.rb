class PromotionForm < ApplicationRecord
  belongs_to :fix
  belongs_to :level
  has_many :members
end
