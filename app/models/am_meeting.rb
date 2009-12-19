class AmMeeting < ActiveRecord::Base
  validates_presence_of :meeting_date
end
