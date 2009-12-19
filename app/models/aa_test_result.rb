class AaTestResult < ActiveRecord::Base
  validates_length_of :package_key, :allow_nil => true, :maximum => 100
  validates_length_of :result, :allow_nil => true, :maximum => 4
  validates_length_of :notes, :allow_nil => true, :maximum => 2000
end
