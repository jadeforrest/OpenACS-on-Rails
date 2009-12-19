class AcsDatatype < ActiveRecord::Base
  validates_presence_of :datatype
  validates_length_of :datatype, :allow_nil => false, :maximum => 50
  validates_numericality_of :max_n_values, :allow_nil => true, :only_integer => true
end
