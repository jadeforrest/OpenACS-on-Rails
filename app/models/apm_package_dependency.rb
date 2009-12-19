class ApmPackageDependency < ActiveRecord::Base
  validates_presence_of :dependency_type
  validates_length_of :dependency_type, :allow_nil => false, :maximum => 20
  validates_presence_of :service_uri
  validates_length_of :service_uri, :allow_nil => false, :maximum => 1500
  validates_presence_of :service_version
  validates_length_of :service_version, :allow_nil => false, :maximum => 100
end
