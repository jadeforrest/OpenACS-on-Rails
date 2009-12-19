class RecurrenceIntervalType < ActiveRecord::Base
  validates_presence_of :interval_type
  validates_numericality_of :interval_type, :allow_nil => false, :only_integer => true
  validates_presence_of :interval_name
  validates_length_of :interval_name, :allow_nil => false, :maximum => 50
end
