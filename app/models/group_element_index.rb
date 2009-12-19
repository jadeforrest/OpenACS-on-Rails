class GroupElementIndex < ActiveRecord::Base
  validates_presence_of :rel_type
  validates_length_of :rel_type, :allow_nil => false, :maximum => 100
  validates_presence_of :ancestor_rel_type
  validates_length_of :ancestor_rel_type, :allow_nil => false, :maximum => 100
end
