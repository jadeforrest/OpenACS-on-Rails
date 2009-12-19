class Image < ActiveRecord::Base
  validates_numericality_of :width, :allow_nil => true, :only_integer => true
  validates_numericality_of :height, :allow_nil => true, :only_integer => true
end
