class Fix < ApplicationRecord
  belongs_to :status
  has_many :promotion_forms
end
