class WfWorkflow < ActiveRecord::Base
  validates_presence_of :workflow_key
  validates_length_of :workflow_key, :allow_nil => false, :maximum => 100
end
