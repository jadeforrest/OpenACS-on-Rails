class LoggerProjection < ActiveRecord::Base
  validates_length_of :name, :allow_nil => true, :maximum => 1000
  validates_length_of :description, :allow_nil => true, :maximum => 4000
  validates_presence_of :start_time
  validates_presence_of :end_time
  validates_presence_of :value
  validates_numericality_of :value, :allow_nil => false
end
