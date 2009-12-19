class WfContextTransitionInfo < ActiveRecord::Base
  validates_presence_of :context_key
  validates_length_of :context_key, :allow_nil => false, :maximum => 100
  validates_presence_of :workflow_key
  validates_length_of :workflow_key, :allow_nil => false, :maximum => 100
  validates_presence_of :transition_key
  validates_length_of :transition_key, :allow_nil => false, :maximum => 100
  validates_numericality_of :estimated_minutes, :allow_nil => true, :only_integer => true
  validates_length_of :enable_callback, :allow_nil => true, :maximum => 100
  validates_length_of :fire_callback, :allow_nil => true, :maximum => 100
  validates_length_of :time_callback, :allow_nil => true, :maximum => 100
  validates_length_of :deadline_callback, :allow_nil => true, :maximum => 100
  validates_length_of :deadline_attribute_name, :allow_nil => true, :maximum => 100
  validates_length_of :hold_timeout_callback, :allow_nil => true, :maximum => 100
  validates_length_of :notification_callback, :allow_nil => true, :maximum => 100
  validates_length_of :unassigned_callback, :allow_nil => true, :maximum => 100
end
