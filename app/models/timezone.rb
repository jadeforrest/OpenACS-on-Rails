class Timezone < ActiveRecord::Base
  validates_presence_of :tz
  validates_length_of :tz, :allow_nil => false, :maximum => 100
  validates_presence_of :gmt_offset
end
