class Fix < ApplicationRecord
  belongs_to :level
  has_many :promotion_forms, dependent: :destroy
  belongs_to :user

  enum status: { ww_development: 'WW Development',
                 uat_testing: 'UAT Testing',
                 e2e_testing: 'E2E Testing',
                 ready_for_prod: 'Ready for PROD' }

  def self.build_promote(fix)
    @new_level = Level.find(fix.level.id + 1)
    ActionInformation.create(fix: fix,
                             from_level: fix.level,
                             to_level: @new_level,
                             user: fix.user)
    fix.update_attribute(:level, @new_level)
  end
end
