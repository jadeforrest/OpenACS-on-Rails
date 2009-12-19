class AcsMailBodyHeader < ActiveRecord::Base
  validates_length_of :header_name, :allow_nil => true, :maximum => 1000
end
