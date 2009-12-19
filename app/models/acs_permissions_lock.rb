class AcsPermissionsLock < ActiveRecord::Base
  validates_numericality_of :lck, :allow_nil => true, :only_integer => true
end
