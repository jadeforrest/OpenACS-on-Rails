class LoggerEntry < ActiveRecord::Base
  validates_presence_of :value
  validates_numericality_of :value, :allow_nil => false
  validates_presence_of :time_stamp
  validates_length_of :description, :allow_nil => true, :maximum => 4000
end
