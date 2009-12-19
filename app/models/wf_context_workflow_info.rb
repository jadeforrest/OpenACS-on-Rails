class WfContextWorkflowInfo < ActiveRecord::Base
  validates_presence_of :context_key
  validates_length_of :context_key, :allow_nil => false, :maximum => 100
  validates_presence_of :workflow_key
  validates_length_of :workflow_key, :allow_nil => false, :maximum => 100
  validates_numericality_of :principal_party, :allow_nil => true, :only_integer => true
end
