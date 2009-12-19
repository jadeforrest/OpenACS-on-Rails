class AcsPrivilege < ActiveRecord::Base
  validates_presence_of :privilege
  validates_length_of :privilege, :allow_nil => false, :maximum => 100
  validates_length_of :pretty_name, :allow_nil => true, :maximum => 100
  validates_length_of :pretty_plural, :allow_nil => true, :maximum => 100
end
