class LoggerProjectVarMap < ActiveRecord::Base
  validates_inclusion_of :primary_p, :in => [true, false], :allow_nil => false, :message => ActiveRecord::Errors.default_error_messages[:blank]
end
