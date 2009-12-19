class ApmPackageCallback < ActiveRecord::Base
  validates_length_of :proc, :allow_nil => true, :maximum => 300
end
