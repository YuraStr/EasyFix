class Fix < ApplicationRecord
  has_one :level
  has_many :promotion_forms, dependent: :destroy

  enum status: [:in_development, :uat_testing, :e2e_testing, :ready_for_prod]
end
