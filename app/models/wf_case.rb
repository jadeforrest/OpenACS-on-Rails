class WfCase < ActiveRecord::Base
  validates_length_of :workflow_key, :allow_nil => true, :maximum => 100
  validates_length_of :context_key, :allow_nil => true, :maximum => 100
  validates_length_of :state, :allow_nil => true, :maximum => 40
end
