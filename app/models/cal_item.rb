class CalItem < ActiveRecord::Base
  validates_numericality_of :on_which_calendar, :allow_nil => true, :only_integer => true
end
