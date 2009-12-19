class AcsMessagesOutgoing < ActiveRecord::Base
  validates_presence_of :to_address
  validates_length_of :to_address, :allow_nil => false, :maximum => 1000
  validates_presence_of :wait_until
end
