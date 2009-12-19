class CategorySearch < ActiveRecord::Base
  validates_presence_of :search_text
  validates_length_of :search_text, :allow_nil => false, :maximum => 200
  validates_presence_of :locale
  validates_length_of :locale, :allow_nil => false, :maximum => 5
  validates_presence_of :queried_count
  validates_numericality_of :queried_count, :allow_nil => false, :only_integer => true
  validates_presence_of :last_queried
end
