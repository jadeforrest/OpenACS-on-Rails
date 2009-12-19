class CrSymlink < ActiveRecord::Base
  validates_length_of :label, :allow_nil => true, :maximum => 1000
end
