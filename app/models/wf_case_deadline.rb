class WfCaseDeadline < ActiveRecord::Base
  validates_length_of :workflow_key, :allow_nil => true, :maximum => 100
  validates_presence_of :transition_key
  validates_length_of :transition_key, :allow_nil => false, :maximum => 100
  validates_presence_of :deadline
end
