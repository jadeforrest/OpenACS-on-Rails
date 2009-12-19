class CrDummy < ActiveRecord::Base
  validates_numericality_of :val, :allow_nil => true, :only_integer => true
end
