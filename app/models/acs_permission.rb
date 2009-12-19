class AcsPermission < ActiveRecord::Base
  validates_presence_of :privilege
  validates_length_of :privilege, :allow_nil => false, :maximum => 100
end
