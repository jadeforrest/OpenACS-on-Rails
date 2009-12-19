class RcSegmentRequiredSegMap < ActiveRecord::Base
  validates_presence_of :rel_segment
  validates_numericality_of :rel_segment, :allow_nil => false, :only_integer => true
  validates_presence_of :rel_side
  validates_length_of :rel_side, :allow_nil => false, :maximum => 3
  validates_presence_of :required_rel_segment
  validates_numericality_of :required_rel_segment, :allow_nil => false, :only_integer => true
end
