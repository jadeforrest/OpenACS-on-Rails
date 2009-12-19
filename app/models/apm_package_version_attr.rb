class ApmPackageVersionAttr < ActiveRecord::Base
  validates_presence_of :attribute_name
  validates_length_of :attribute_name, :allow_nil => false, :maximum => 100
  validates_length_of :attribute_value, :allow_nil => true, :maximum => 4000
end
