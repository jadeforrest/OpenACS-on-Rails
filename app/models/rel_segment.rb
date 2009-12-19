class RelSegment < ActiveRecord::Base
  validates_presence_of :segment_name
  validates_length_of :segment_name, :allow_nil => false, :maximum => 230
  validates_presence_of :rel_type
  validates_length_of :rel_type, :allow_nil => false, :maximum => 100
end
