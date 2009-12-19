class CategorySynonym < ActiveRecord::Base
  validates_presence_of :locale
  validates_length_of :locale, :allow_nil => false, :maximum => 5
  validates_presence_of :name
  validates_length_of :name, :allow_nil => false, :maximum => 100
  validates_length_of :synonym_p, :allow_nil => true, :maximum => 1
end
