class AcsStaticAttrValue < ActiveRecord::Base
  validates_presence_of :object_type
  validates_length_of :object_type, :allow_nil => false, :maximum => 100
end
