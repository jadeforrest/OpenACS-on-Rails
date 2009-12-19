class AcsScOperation < ActiveRecord::Base
  validates_length_of :contract_name, :allow_nil => true, :maximum => 1000
  validates_length_of :operation_name, :allow_nil => true, :maximum => 100
  validates_presence_of :operation_desc
  validates_inclusion_of :operation_iscachable_p, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_numericality_of :operation_nargs, :allow_nil => true, :only_integer => true
end
