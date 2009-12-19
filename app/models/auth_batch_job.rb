class AuthBatchJob < ActiveRecord::Base
  validates_inclusion_of :interactive_p, :in => [true, false], :allow_nil => false, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_inclusion_of :snapshot_p, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_numericality_of :creation_user, :allow_nil => true, :only_integer => true
end
