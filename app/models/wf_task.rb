class WfTask < ActiveRecord::Base
  validates_length_of :workflow_key, :allow_nil => true, :maximum => 100
  validates_length_of :transition_key, :allow_nil => true, :maximum => 100
  validates_length_of :state, :allow_nil => true, :maximum => 40
  validates_numericality_of :estimated_minutes, :allow_nil => true, :only_integer => true
  validates_numericality_of :holding_user, :allow_nil => true, :only_integer => true
end
