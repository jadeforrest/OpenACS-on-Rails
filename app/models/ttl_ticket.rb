class TtlTicket < ActiveRecord::Base
  validates_inclusion_of :active_p, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_presence_of :name
  validates_length_of :name, :allow_nil => false, :maximum => 200
  validates_length_of :status, :allow_nil => true, :maximum => 20
  validates_length_of :url, :allow_nil => true, :maximum => 400
  validates_length_of :message_format, :allow_nil => true, :maximum => 10
  validates_numericality_of :priority, :allow_nil => true, :only_integer => true
end
