class CategoryTreeTranslation < ActiveRecord::Base
  validates_presence_of :locale
  validates_length_of :locale, :allow_nil => false, :maximum => 5
  validates_presence_of :name
  validates_length_of :name, :allow_nil => false, :maximum => 50
  validates_length_of :description, :allow_nil => true, :maximum => 1000
end
