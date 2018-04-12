class Member < ApplicationRecord
  belongs_to :member_type
  belongs_to :promotion_form
end
