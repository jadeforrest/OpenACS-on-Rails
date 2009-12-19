class Notification < ActiveRecord::Base
  validates_presence_of :notif_date
  validates_length_of :notif_subject, :allow_nil => true, :maximum => 1000
  validates_numericality_of :notif_user, :allow_nil => true, :only_integer => true
end
