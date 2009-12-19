class LangMessageKey < ActiveRecord::Base
  validates_presence_of :message_key
  validates_length_of :message_key, :allow_nil => false, :maximum => 200
  validates_presence_of :package_key
  validates_length_of :package_key, :allow_nil => false, :maximum => 100
end
