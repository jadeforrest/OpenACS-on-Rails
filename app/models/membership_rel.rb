class MembershipRel < ActiveRecord::Base
  validates_length_of :member_state, :allow_nil => true, :maximum => 20
end
