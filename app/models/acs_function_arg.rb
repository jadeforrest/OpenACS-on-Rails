class AcsFunctionArg < ActiveRecord::Base
  validates_presence_of :function
  validates_length_of :function, :allow_nil => false, :maximum => 100
  validates_presence_of :arg_seq
  validates_numericality_of :arg_seq, :allow_nil => false, :only_integer => true
  validates_length_of :arg_name, :allow_nil => true, :maximum => 100
  validates_length_of :arg_default, :allow_nil => true, :maximum => 100
end
