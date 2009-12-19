class CategoryTreeMap < ActiveRecord::Base
  validates_length_of :assign_single_p, :allow_nil => true, :maximum => 1
  validates_length_of :require_category_p, :allow_nil => true, :maximum => 1
end
