class LangTranslationRegistry < ActiveRecord::Base
  validates_presence_of :on_which_table
  validates_length_of :on_which_table, :allow_nil => false, :maximum => 50
  validates_presence_of :locale
  validates_length_of :locale, :allow_nil => false, :maximum => 30
end
