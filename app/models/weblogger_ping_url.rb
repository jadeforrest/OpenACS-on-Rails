class WebloggerPingUrl < ActiveRecord::Base
  validates_presence_of :ping_url
  validates_length_of :ping_url, :allow_nil => false, :maximum => 500
end
