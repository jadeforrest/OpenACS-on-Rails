class LobDatum < ActiveRecord::Base
  validates_presence_of :segment
  validates_numericality_of :segment, :allow_nil => false, :only_integer => true
  validates_presence_of :byte_len
  validates_numericality_of :byte_len, :allow_nil => false, :only_integer => true
  validates_presence_of :data
end
