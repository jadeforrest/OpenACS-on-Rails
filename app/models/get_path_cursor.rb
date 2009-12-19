class GetPathCursor < ActiveRecord::Base
  validates_numericality_of :rel_cursor_pos, :allow_nil => true, :only_integer => true
  validates_numericality_of :abs_cursor_pos, :allow_nil => true, :only_integer => true
end
