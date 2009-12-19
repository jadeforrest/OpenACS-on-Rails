class CategorySearchResult < ActiveRecord::Base
  validates_presence_of :similarity
  validates_numericality_of :similarity, :allow_nil => false, :only_integer => true
end
