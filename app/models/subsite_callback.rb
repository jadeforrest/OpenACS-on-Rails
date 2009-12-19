class SubsiteCallback < ActiveRecord::Base
  validates_presence_of :event_type
  validates_length_of :event_type, :allow_nil => false, :maximum => 100
  validates_presence_of :object_type
  validates_length_of :object_type, :allow_nil => false, :maximum => 100
  validates_presence_of :callback
  validates_length_of :callback, :allow_nil => false, :maximum => 300
  validates_presence_of :callback_type
  validates_length_of :callback_type, :allow_nil => false, :maximum => 100
  validates_presence_of :sort_order
  validates_numericality_of :sort_order, :allow_nil => false, :only_integer => true
end
