class CrExtlink < ActiveRecord::Base
  validates_presence_of :url
  validates_length_of :url, :allow_nil => false, :maximum => 1000
  validates_presence_of :label
  validates_length_of :label, :allow_nil => false, :maximum => 1000
end
