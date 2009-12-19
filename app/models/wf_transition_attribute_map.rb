class WfTransitionAttributeMap < ActiveRecord::Base
  validates_presence_of :workflow_key
  validates_length_of :workflow_key, :allow_nil => false, :maximum => 100
  validates_presence_of :transition_key
  validates_length_of :transition_key, :allow_nil => false, :maximum => 100
  validates_presence_of :sort_order
  validates_numericality_of :sort_order, :allow_nil => false, :only_integer => true
end
