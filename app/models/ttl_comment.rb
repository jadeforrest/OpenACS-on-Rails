class TtlComment < ActiveRecord::Base
  validates_inclusion_of :active_p, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_presence_of :creation_user
  validates_numericality_of :creation_user, :allow_nil => false, :only_integer => true
  validates_length_of :message_format, :allow_nil => true, :maximum => 10
end
