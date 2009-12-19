class CategorySynonymIndex < ActiveRecord::Base
  validates_presence_of :trigram
  validates_length_of :trigram, :allow_nil => false, :maximum => 3
end
