class WfTransitionRoleAssignMap < ActiveRecord::Base
  validates_presence_of :workflow_key
  validates_length_of :workflow_key, :allow_nil => false, :maximum => 100
  validates_presence_of :transition_key
  validates_length_of :transition_key, :allow_nil => false, :maximum => 100
  validates_presence_of :assign_role_key
  validates_length_of :assign_role_key, :allow_nil => false, :maximum => 100
end
