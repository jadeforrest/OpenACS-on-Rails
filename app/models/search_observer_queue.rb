class SearchObserverQueue < ActiveRecord::Base
  validates_length_of :event, :allow_nil => true, :maximum => 6
end
