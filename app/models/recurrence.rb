class Recurrence < ActiveRecord::Base
  validates_presence_of :interval_type
  validates_numericality_of :interval_type, :allow_nil => false, :only_integer => true
  validates_numericality_of :every_nth_interval, :allow_nil => true, :only_integer => true
  validates_length_of :days_of_week, :allow_nil => true, :maximum => 20
  validates_length_of :custom_func, :allow_nil => true, :maximum => 255
end
