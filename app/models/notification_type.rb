class NotificationType < ActiveRecord::Base
  validates_presence_of :short_name
  validates_length_of :short_name, :allow_nil => false, :maximum => 100
  validates_presence_of :pretty_name
  validates_length_of :pretty_name, :allow_nil => false, :maximum => 200
  validates_length_of :description, :allow_nil => true, :maximum => 2000
end
