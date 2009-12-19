class CrScheduledReleaseLog < ActiveRecord::Base
  validates_presence_of :exec_date
  validates_presence_of :items_released
  validates_numericality_of :items_released, :allow_nil => false, :only_integer => true
  validates_presence_of :items_expired
  validates_numericality_of :items_expired, :allow_nil => false, :only_integer => true
  validates_numericality_of :err_num, :allow_nil => true, :only_integer => true
  validates_length_of :err_msg, :allow_nil => true, :maximum => 500
end
