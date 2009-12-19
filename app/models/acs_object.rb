class AcsObject < ActiveRecord::Base
  validates_presence_of :object_type
  validates_length_of :object_type, :allow_nil => false, :maximum => 100
  validates_inclusion_of :security_inherit_p, :in => [true, false], :allow_nil => false, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_numericality_of :creation_user, :allow_nil => true, :only_integer => true
  validates_presence_of :creation_date
  validates_length_of :creation_ip, :allow_nil => true, :maximum => 50
  validates_presence_of :last_modified
  validates_numericality_of :modifying_user, :allow_nil => true, :only_integer => true
  validates_length_of :modifying_ip, :allow_nil => true, :maximum => 50
  validates_presence_of :tree_sortkey
  validates_length_of :title, :allow_nil => true, :maximum => 1000
end
