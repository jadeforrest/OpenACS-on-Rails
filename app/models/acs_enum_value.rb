class AcsEnumValue < ActiveRecord::Base
  validates_presence_of :enum_value
  validates_length_of :enum_value, :allow_nil => false, :maximum => 1000
  validates_presence_of :pretty_name
  validates_length_of :pretty_name, :allow_nil => false, :maximum => 100
  validates_presence_of :sort_order
  validates_numericality_of :sort_order, :allow_nil => false, :only_integer => true
end
