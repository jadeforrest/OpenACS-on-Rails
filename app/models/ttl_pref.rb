class TtlPref < ActiveRecord::Base
  validates_length_of :sort, :allow_nil => true, :maximum => 100
  validates_inclusion_of :mine_p, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_length_of :status, :allow_nil => true, :maximum => 100
end
