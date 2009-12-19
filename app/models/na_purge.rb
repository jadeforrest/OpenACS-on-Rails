class NaPurge < ActiveRecord::Base
  validates_presence_of :top
  validates_numericality_of :top, :allow_nil => false, :only_integer => true
  validates_presence_of :bottom
  validates_numericality_of :bottom, :allow_nil => false, :only_integer => true
end
