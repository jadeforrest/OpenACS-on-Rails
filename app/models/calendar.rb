class Calendar < ActiveRecord::Base
  validates_length_of :calendar_name, :allow_nil => true, :maximum => 200
  validates_inclusion_of :private_p, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
end
