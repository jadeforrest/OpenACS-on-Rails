class AcsDataLink < ActiveRecord::Base
  validates_presence_of :object_id_one
  validates_numericality_of :object_id_one, :allow_nil => false, :only_integer => true
  validates_presence_of :object_id_two
  validates_numericality_of :object_id_two, :allow_nil => false, :only_integer => true
end
