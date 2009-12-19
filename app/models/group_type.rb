class GroupType < ActiveRecord::Base
  validates_presence_of :group_type
  validates_length_of :group_type, :allow_nil => false, :maximum => 100
  validates_presence_of :default_join_policy
  validates_length_of :default_join_policy, :allow_nil => false, :maximum => 30
end
