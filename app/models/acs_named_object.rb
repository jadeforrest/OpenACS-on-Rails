class AcsNamedObject < ActiveRecord::Base
  validates_length_of :object_name, :allow_nil => true, :maximum => 200
end
