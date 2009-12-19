class LoggerProject < ActiveRecord::Base
  validates_length_of :name, :allow_nil => true, :maximum => 1000
  validates_length_of :description, :allow_nil => true, :maximum => 4000
  validates_inclusion_of :active_p, :in => [true, false], :allow_nil => false, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_presence_of :project_lead
  validates_numericality_of :project_lead, :allow_nil => false, :only_integer => true
end
