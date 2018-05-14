class MemberType < ApplicationRecord
  has_many :members
  has_many :member_locations
end
