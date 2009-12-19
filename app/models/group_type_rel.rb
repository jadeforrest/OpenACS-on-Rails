class GroupTypeRel < ActiveRecord::Base
  validates_presence_of :rel_type
  validates_length_of :rel_type, :allow_nil => false, :maximum => 100
  validates_presence_of :group_type
  validates_length_of :group_type, :allow_nil => false, :maximum => 100
end
