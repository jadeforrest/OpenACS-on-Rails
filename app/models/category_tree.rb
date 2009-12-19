class CategoryTree < ActiveRecord::Base
  validates_length_of :site_wide_p, :allow_nil => true, :maximum => 1
end
