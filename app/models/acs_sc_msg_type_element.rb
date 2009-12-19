class AcsScMsgTypeElement < ActiveRecord::Base
  validates_length_of :element_name, :allow_nil => true, :maximum => 100
  validates_inclusion_of :element_msg_type_isset_p, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_numericality_of :element_pos, :allow_nil => true, :only_integer => true
end
