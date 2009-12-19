class CrChildRel < ActiveRecord::Base
  validates_length_of :relation_tag, :allow_nil => true, :maximum => 100
  validates_numericality_of :order_n, :allow_nil => true, :only_integer => true
end
