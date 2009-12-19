class Attachment < ActiveRecord::Base
  validates_presence_of :approved_p
  validates_length_of :approved_p, :allow_nil => false, :maximum => 1
end
