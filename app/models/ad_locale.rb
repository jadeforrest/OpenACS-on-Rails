class AdLocale < ActiveRecord::Base
  validates_presence_of :locale
  validates_length_of :locale, :allow_nil => false, :maximum => 30
  validates_presence_of :language
  validates_length_of :language, :allow_nil => false, :maximum => 2
  validates_presence_of :country
  validates_length_of :country, :allow_nil => false, :maximum => 2
  validates_length_of :variant, :allow_nil => true, :maximum => 30
  validates_presence_of :label
  validates_length_of :label, :allow_nil => false, :maximum => 200
  validates_presence_of :nls_language
  validates_length_of :nls_language, :allow_nil => false, :maximum => 30
  validates_length_of :nls_territory, :allow_nil => true, :maximum => 30
  validates_length_of :nls_charset, :allow_nil => true, :maximum => 30
  validates_length_of :mime_charset, :allow_nil => true, :maximum => 30
  validates_inclusion_of :default_p, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_inclusion_of :enabled_p, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
end
