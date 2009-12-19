class RlResourceCategoryType < ActiveRecord::Base
  validates_length_of :short_name, :allow_nil => true, :maximum => 100
  validates_length_of :description, :allow_nil => true, :maximum => 1000
  validates_numericality_of :ordering, :allow_nil => true, :only_integer => true
end
