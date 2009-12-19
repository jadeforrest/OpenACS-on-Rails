class ApmPackageOwner < ActiveRecord::Base
  validates_length_of :owner_uri, :allow_nil => true, :maximum => 1500
  validates_presence_of :owner_name
  validates_length_of :owner_name, :allow_nil => false, :maximum => 200
  validates_numericality_of :sort_key, :allow_nil => true, :only_integer => true
end
