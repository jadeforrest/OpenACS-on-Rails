class AcsMailLiteQueue < ActiveRecord::Base
  validates_length_of :to_addr, :allow_nil => true, :maximum => 200
  validates_length_of :from_addr, :allow_nil => true, :maximum => 200
  validates_length_of :subject, :allow_nil => true, :maximum => 200
  validates_inclusion_of :valid_email_p, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
end
