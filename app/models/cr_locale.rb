class CrLocale < ActiveRecord::Base
  validates_presence_of :locale
  validates_length_of :locale, :allow_nil => false, :maximum => 4
  validates_presence_of :label
  validates_length_of :label, :allow_nil => false, :maximum => 200
  validates_presence_of :nls_language
  validates_length_of :nls_language, :allow_nil => false, :maximum => 30
  validates_length_of :nls_territory, :allow_nil => true, :maximum => 30
  validates_length_of :nls_charset, :allow_nil => true, :maximum => 30
end
