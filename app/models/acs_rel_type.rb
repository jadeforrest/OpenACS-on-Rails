class AcsRelType < ActiveRecord::Base
  validates_presence_of :rel_type
  validates_length_of :rel_type, :allow_nil => false, :maximum => 100
  validates_presence_of :object_type_one
  validates_length_of :object_type_one, :allow_nil => false, :maximum => 100
  validates_length_of :role_one, :allow_nil => true, :maximum => 100
  validates_presence_of :min_n_rels_one
  validates_numericality_of :min_n_rels_one, :allow_nil => false, :only_integer => true
  validates_numericality_of :max_n_rels_one, :allow_nil => true, :only_integer => true
  validates_presence_of :object_type_two
  validates_length_of :object_type_two, :allow_nil => false, :maximum => 100
  validates_length_of :role_two, :allow_nil => true, :maximum => 100
  validates_presence_of :min_n_rels_two
  validates_numericality_of :min_n_rels_two, :allow_nil => false, :only_integer => true
  validates_numericality_of :max_n_rels_two, :allow_nil => true, :only_integer => true
end
