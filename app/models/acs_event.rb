class AcsEvent < ActiveRecord::Base
  validates_length_of :name, :allow_nil => true, :maximum => 255
  validates_inclusion_of :html_p, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_length_of :status_summary, :allow_nil => true, :maximum => 255
  validates_inclusion_of :redirect_to_rel_link_p, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
end
