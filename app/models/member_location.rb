class MemberLocation < ApplicationRecord
  belongs_to :member_type
  belongs_to :level
end
