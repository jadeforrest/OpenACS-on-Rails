class AaTestFinalResult < ActiveRecord::Base
  validates_length_of :package_key, :allow_nil => true, :maximum => 100
  validates_numericality_of :passes, :allow_nil => true, :only_integer => true
  validates_numericality_of :fails, :allow_nil => true, :only_integer => true
end
