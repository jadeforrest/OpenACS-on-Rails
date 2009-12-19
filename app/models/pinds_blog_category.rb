class PindsBlogCategory < ActiveRecord::Base
  validates_presence_of :name
  validates_length_of :name, :allow_nil => false, :maximum => 4000
  validates_presence_of :short_name
  validates_length_of :short_name, :allow_nil => false, :maximum => 4000
end
