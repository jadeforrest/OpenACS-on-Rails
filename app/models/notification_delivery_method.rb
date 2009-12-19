class NotificationDeliveryMethod < ActiveRecord::Base
  validates_presence_of :short_name
  validates_length_of :short_name, :allow_nil => false, :maximum => 100
  validates_presence_of :pretty_name
  validates_length_of :pretty_name, :allow_nil => false, :maximum => 200
end
