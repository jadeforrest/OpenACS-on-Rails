class TimezoneRule < ActiveRecord::Base
  validates_presence_of :abbrev
  validates_length_of :abbrev, :allow_nil => false, :maximum => 10
  validates_presence_of :utc_start
  validates_presence_of :utc_end
  validates_presence_of :local_start
  validates_presence_of :local_end
  validates_presence_of :gmt_offset
  validates_inclusion_of :isdst_p, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
end
