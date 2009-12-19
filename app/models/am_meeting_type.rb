class AmMeetingType < ActiveRecord::Base
  validates_presence_of :title
  validates_length_of :title, :allow_nil => false, :maximum => 100
end
