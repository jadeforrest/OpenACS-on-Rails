class AuthBatchJobEntry < ActiveRecord::Base
  validates_length_of :operation, :allow_nil => true, :maximum => 100
  validates_length_of :username, :allow_nil => true, :maximum => 100
  validates_inclusion_of :success_p, :in => [true, false], :allow_nil => false, :message => ActiveRecord::Errors.default_error_messages[:blank]
end
