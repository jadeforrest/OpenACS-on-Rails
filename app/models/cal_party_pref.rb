class CalPartyPref < ActiveRecord::Base
  validates_length_of :default_view, :allow_nil => true, :maximum => 10
  validates_numericality_of :default_duration, :allow_nil => true, :only_integer => true
  validates_numericality_of :daily_start, :allow_nil => true, :only_integer => true
  validates_numericality_of :daily_end, :allow_nil => true, :only_integer => true
  validates_numericality_of :time_zone, :allow_nil => true, :only_integer => true
  validates_length_of :first_day_of_week, :allow_nil => true, :maximum => 9
end
