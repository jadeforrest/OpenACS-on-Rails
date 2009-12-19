class AcsMailQueueOutgoing < ActiveRecord::Base
  validates_presence_of :envelope_to
end
