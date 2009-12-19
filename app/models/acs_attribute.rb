class AcsAttribute < ActiveRecord::Base
  validates_presence_of :object_type
  validates_length_of :object_type, :allow_nil => false, :maximum => 100
  validates_length_of :table_name, :allow_nil => true, :maximum => 30
  validates_presence_of :attribute_name
  validates_length_of :attribute_name, :allow_nil => false, :maximum => 100
  validates_presence_of :pretty_name
  validates_length_of :pretty_name, :allow_nil => false, :maximum => 100
  validates_length_of :pretty_plural, :allow_nil => true, :maximum => 100
  validates_presence_of :sort_order
  validates_numericality_of :sort_order, :allow_nil => false, :only_integer => true
  validates_presence_of :datatype
  validates_length_of :datatype, :allow_nil => false, :maximum => 50
  validates_presence_of :min_n_values
  validates_numericality_of :min_n_values, :allow_nil => false, :only_integer => true
  validates_presence_of :max_n_values
  validates_numericality_of :max_n_values, :allow_nil => false, :only_integer => true
  validates_length_of :storage, :allow_nil => true, :maximum => 13
  validates_inclusion_of :static_p, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_length_of :column_name, :allow_nil => true, :maximum => 30
end
