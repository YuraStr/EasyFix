class Level < ApplicationRecord
  has_many :promotion_forms
  has_many :fixes
end
