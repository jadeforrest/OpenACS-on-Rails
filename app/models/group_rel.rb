class GroupRel < ActiveRecord::Base
  validates_presence_of :rel_type
  validates_length_of :rel_type, :allow_nil => false, :maximum => 100
end
