class AcsPrivilegeHierarchy < ActiveRecord::Base
  validates_presence_of :privilege
  validates_length_of :privilege, :allow_nil => false, :maximum => 100
  validates_presence_of :child_privilege
  validates_length_of :child_privilege, :allow_nil => false, :maximum => 100
end
