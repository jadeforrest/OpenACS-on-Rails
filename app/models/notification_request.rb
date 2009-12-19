class NotificationRequest < ActiveRecord::Base
  validates_length_of :format, :allow_nil => true, :maximum => 100
  validates_inclusion_of :dynamic_p, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
end
