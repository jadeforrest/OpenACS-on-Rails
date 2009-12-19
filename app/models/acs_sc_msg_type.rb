class AcsScMsgType < ActiveRecord::Base
  validates_length_of :msg_type_name, :allow_nil => true, :maximum => 100
end
