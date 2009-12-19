class NotificationReply < ActiveRecord::Base
  validates_presence_of :from_user
  validates_numericality_of :from_user, :allow_nil => false, :only_integer => true
  validates_length_of :subject, :allow_nil => true, :maximum => 100
end
