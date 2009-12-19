class HostNodeMap < ActiveRecord::Base
  validates_length_of :host, :allow_nil => true, :maximum => 200
end
