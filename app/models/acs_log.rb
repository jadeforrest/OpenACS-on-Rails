class AcsLog < ActiveRecord::Base
  validates_presence_of :log_date
  validates_presence_of :log_level
  validates_length_of :log_level, :allow_nil => false, :maximum => 20
  validates_presence_of :log_key
  validates_length_of :log_key, :allow_nil => false, :maximum => 100
  validates_presence_of :message
end
