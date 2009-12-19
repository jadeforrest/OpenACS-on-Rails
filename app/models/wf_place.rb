class WfPlace < ActiveRecord::Base
  validates_presence_of :place_key
  validates_length_of :place_key, :allow_nil => false, :maximum => 100
  validates_presence_of :workflow_key
  validates_length_of :workflow_key, :allow_nil => false, :maximum => 100
  validates_presence_of :place_name
  validates_length_of :place_name, :allow_nil => false, :maximum => 100
  validates_numericality_of :sort_order, :allow_nil => true, :only_integer => true
end
