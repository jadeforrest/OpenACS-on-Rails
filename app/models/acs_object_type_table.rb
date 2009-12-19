class AcsObjectTypeTable < ActiveRecord::Base
  validates_presence_of :object_type
  validates_length_of :object_type, :allow_nil => false, :maximum => 100
  validates_presence_of :table_name
  validates_length_of :table_name, :allow_nil => false, :maximum => 30
  validates_length_of :id_column, :allow_nil => true, :maximum => 30
end
