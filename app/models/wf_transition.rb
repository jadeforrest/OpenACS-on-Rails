class WfTransition < ActiveRecord::Base
  validates_presence_of :transition_key
  validates_length_of :transition_key, :allow_nil => false, :maximum => 100
  validates_presence_of :transition_name
  validates_length_of :transition_name, :allow_nil => false, :maximum => 100
  validates_presence_of :workflow_key
  validates_length_of :workflow_key, :allow_nil => false, :maximum => 100
  validates_length_of :role_key, :allow_nil => true, :maximum => 100
  validates_numericality_of :sort_order, :allow_nil => true, :only_integer => true
  validates_length_of :trigger_type, :allow_nil => true, :maximum => 40
end
