class TargetPlaceList < ActiveRecord::Base
  validates_presence_of :rcnt
  validates_numericality_of :rcnt, :allow_nil => false, :only_integer => true
  validates_length_of :ky, :allow_nil => true, :maximum => 100
end
