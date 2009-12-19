class Lob < ActiveRecord::Base
  validates_presence_of :refcount
  validates_numericality_of :refcount, :allow_nil => false, :only_integer => true
end
