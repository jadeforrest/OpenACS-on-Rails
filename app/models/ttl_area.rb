class TtlArea < ActiveRecord::Base
  validates_inclusion_of :active_p, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_presence_of :name
  validates_length_of :name, :allow_nil => false, :maximum => 200
end
