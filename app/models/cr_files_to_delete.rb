class CrFilesToDelete < ActiveRecord::Base
  validates_length_of :path, :allow_nil => true, :maximum => 250
  validates_length_of :storage_area_key, :allow_nil => true, :maximum => 100
end
