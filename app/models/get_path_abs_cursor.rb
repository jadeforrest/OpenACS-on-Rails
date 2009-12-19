class GetPathAbsCursor < ActiveRecord::Base
  validates_presence_of :sid
  validates_numericality_of :sid, :allow_nil => false, :only_integer => true
  validates_presence_of :pos
  validates_numericality_of :pos, :allow_nil => false, :only_integer => true
  validates_numericality_of :tree_level, :allow_nil => true, :only_integer => true
end
