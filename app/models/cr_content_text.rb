class CrContentText < ActiveRecord::Base
  validates_numericality_of :content, :allow_nil => true, :only_integer => true
end
