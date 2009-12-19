class CrKeyword < ActiveRecord::Base
  validates_presence_of :heading
  validates_length_of :heading, :allow_nil => false, :maximum => 600
  validates_inclusion_of :has_children, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
end
