class LangMessage < ActiveRecord::Base
  validates_presence_of :message_key
  validates_length_of :message_key, :allow_nil => false, :maximum => 200
  validates_presence_of :package_key
  validates_length_of :package_key, :allow_nil => false, :maximum => 100
  validates_presence_of :locale
  validates_length_of :locale, :allow_nil => false, :maximum => 30
  validates_length_of :upgrade_status, :allow_nil => true, :maximum => 30
  validates_presence_of :creation_date
  validates_numericality_of :creation_user, :allow_nil => true, :only_integer => true
  validates_inclusion_of :deleted_p, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_inclusion_of :conflict_p, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
end
