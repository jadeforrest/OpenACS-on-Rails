class ApmPackage < ActiveRecord::Base
  validates_length_of :package_key, :allow_nil => true, :maximum => 100
  validates_presence_of :instance_name
  validates_length_of :instance_name, :allow_nil => false, :maximum => 300
  validates_length_of :default_locale, :allow_nil => true, :maximum => 30
end
