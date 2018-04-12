class Fix < ApplicationRecord
  belongs_to :level
  has_many :promotion_forms, dependent: :destroy
  belongs_to :user

  enum status: { ww_development: 'WW Development',
                 uat_testing: 'UAT Testing',
                 e2e_testing: 'E2E Testing',
                 ready_for_prod: 'Ready for PROD' }
end
