class WfCaseAssignment < ActiveRecord::Base
  validates_length_of :workflow_key, :allow_nil => true, :maximum => 100
  validates_presence_of :role_key
  validates_length_of :role_key, :allow_nil => false, :maximum => 100
end
