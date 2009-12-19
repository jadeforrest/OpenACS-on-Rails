class RssGenSubscr < ActiveRecord::Base
  validates_presence_of :timeout
  validates_numericality_of :timeout, :allow_nil => false, :only_integer => true
  validates_numericality_of :last_ttb, :allow_nil => true, :only_integer => true
  validates_length_of :channel_title, :allow_nil => true, :maximum => 200
  validates_length_of :channel_link, :allow_nil => true, :maximum => 1000
end
