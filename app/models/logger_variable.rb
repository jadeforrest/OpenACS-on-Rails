class LoggerVariable < ActiveRecord::Base
  validates_length_of :name, :allow_nil => true, :maximum => 200
  validates_length_of :unit, :allow_nil => true, :maximum => 200
end
