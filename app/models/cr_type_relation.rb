class CrTypeRelation < ActiveRecord::Base
  validates_presence_of :content_type
  validates_length_of :content_type, :allow_nil => false, :maximum => 100
  validates_presence_of :target_type
  validates_length_of :target_type, :allow_nil => false, :maximum => 100
  validates_presence_of :relation_tag
  validates_length_of :relation_tag, :allow_nil => false, :maximum => 100
  validates_numericality_of :min_n, :allow_nil => true, :only_integer => true
  validates_numericality_of :max_n, :allow_nil => true, :only_integer => true
end
