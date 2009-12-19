class Category < ActiveRecord::Base
  validates_length_of :deprecated_p, :allow_nil => true, :maximum => 1
  validates_numericality_of :left_ind, :allow_nil => true, :only_integer => true
  validates_numericality_of :right_ind, :allow_nil => true, :only_integer => true
end
