class AcsPrivilegeDescendantMap < ActiveRecord::Base
  validates_presence_of :privilege
  validates_length_of :privilege, :allow_nil => false, :maximum => 100
  validates_presence_of :descendant
  validates_length_of :descendant, :allow_nil => false, :maximum => 100
end
