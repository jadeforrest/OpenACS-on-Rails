class RlResourceCategory < ActiveRecord::Base
  validates_numericality_of :category_type, :allow_nil => true, :only_integer => true
  validates_length_of :short_name, :allow_nil => true, :maximum => 100
  validates_length_of :description, :allow_nil => true, :maximum => 1000
end
