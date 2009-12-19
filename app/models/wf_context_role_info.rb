class WfContextRoleInfo < ActiveRecord::Base
  validates_presence_of :context_key
  validates_length_of :context_key, :allow_nil => false, :maximum => 100
  validates_presence_of :workflow_key
  validates_length_of :workflow_key, :allow_nil => false, :maximum => 100
  validates_presence_of :role_key
  validates_length_of :role_key, :allow_nil => false, :maximum => 100
  validates_length_of :assignment_callback, :allow_nil => true, :maximum => 100
  validates_length_of :assignment_custom_arg, :allow_nil => true, :maximum => 4000
end
