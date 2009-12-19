class AcsAttributeDescription < ActiveRecord::Base
  validates_presence_of :object_type
  validates_length_of :object_type, :allow_nil => false, :maximum => 100
  validates_presence_of :attribute_name
  validates_length_of :attribute_name, :allow_nil => false, :maximum => 100
  validates_presence_of :description_key
  validates_length_of :description_key, :allow_nil => false, :maximum => 100
  validates_presence_of :description
end
