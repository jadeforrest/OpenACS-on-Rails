class ApmParameter < ActiveRecord::Base
  validates_presence_of :package_key
  validates_length_of :package_key, :allow_nil => false, :maximum => 100
  validates_presence_of :parameter_name
  validates_length_of :parameter_name, :allow_nil => false, :maximum => 100
  validates_length_of :description, :allow_nil => true, :maximum => 2000
  validates_length_of :section_name, :allow_nil => true, :maximum => 200
  validates_presence_of :datatype
  validates_length_of :datatype, :allow_nil => false, :maximum => 100
  validates_presence_of :min_n_values
  validates_numericality_of :min_n_values, :allow_nil => false, :only_integer => true
  validates_presence_of :max_n_values
  validates_numericality_of :max_n_values, :allow_nil => false, :only_integer => true
end
