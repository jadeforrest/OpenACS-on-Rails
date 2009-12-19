class AcsMailLiteBounceNotif < ActiveRecord::Base
  validates_numericality_of :notification_count, :allow_nil => true, :only_integer => true
end
