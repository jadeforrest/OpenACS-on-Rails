class AdLocaleUserPref < ActiveRecord::Base
  validates_presence_of :locale
  validates_length_of :locale, :allow_nil => false, :maximum => 30
end
