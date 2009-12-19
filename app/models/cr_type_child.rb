class CrTypeChild < ActiveRecord::Base
  validates_presence_of :parent_type
  validates_length_of :parent_type, :allow_nil => false, :maximum => 100
  validates_presence_of :child_type
  validates_length_of :child_type, :allow_nil => false, :maximum => 100
  validates_presence_of :relation_tag
  validates_length_of :relation_tag, :allow_nil => false, :maximum => 100
  validates_numericality_of :min_n, :allow_nil => true, :only_integer => true
  validates_numericality_of :max_n, :allow_nil => true, :only_integer => true
end
