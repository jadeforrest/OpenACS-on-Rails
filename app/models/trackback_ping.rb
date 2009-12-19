class TrackbackPing < ActiveRecord::Base
  validates_length_of :tb_url, :allow_nil => true, :maximum => 1000
  validates_length_of :name, :allow_nil => true, :maximum => 1000
end
