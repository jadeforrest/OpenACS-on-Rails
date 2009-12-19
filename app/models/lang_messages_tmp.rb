class LangMessagesTmp < ActiveRecord::Base
  validates_length_of :message_key, :allow_nil => true, :maximum => 200
  validates_length_of :package_key, :allow_nil => true, :maximum => 100
  validates_length_of :locale, :allow_nil => true, :maximum => 30
  validates_length_of :upgrade_status, :allow_nil => true, :maximum => 30
end
