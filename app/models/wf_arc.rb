class WfArc < ActiveRecord::Base
  validates_presence_of :workflow_key
  validates_length_of :workflow_key, :allow_nil => false, :maximum => 100
  validates_presence_of :transition_key
  validates_length_of :transition_key, :allow_nil => false, :maximum => 100
  validates_presence_of :place_key
  validates_length_of :place_key, :allow_nil => false, :maximum => 100
  validates_presence_of :direction
  validates_length_of :direction, :allow_nil => false, :maximum => 3
  validates_length_of :guard_callback, :allow_nil => true, :maximum => 100
  validates_length_of :guard_description, :allow_nil => true, :maximum => 500
end
