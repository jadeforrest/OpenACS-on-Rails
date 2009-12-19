class AuthAuthority < ActiveRecord::Base
  validates_length_of :short_name, :allow_nil => true, :maximum => 255
  validates_length_of :pretty_name, :allow_nil => true, :maximum => 4000
  validates_length_of :help_contact_text, :allow_nil => true, :maximum => 4000
  validates_length_of :help_contact_text_format, :allow_nil => true, :maximum => 200
  validates_inclusion_of :enabled_p, :in => [true, false], :allow_nil => false, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_presence_of :sort_order
  validates_numericality_of :sort_order, :allow_nil => false, :only_integer => true
  validates_length_of :forgotten_pwd_url, :allow_nil => true, :maximum => 4000
  validates_length_of :change_pwd_url, :allow_nil => true, :maximum => 4000
  validates_length_of :register_url, :allow_nil => true, :maximum => 4000
  validates_inclusion_of :batch_sync_enabled_p, :in => [true, false], :allow_nil => false, :message => ActiveRecord::Errors.default_error_messages[:blank]
end
