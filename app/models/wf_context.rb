class WfContext < ActiveRecord::Base
  validates_presence_of :context_key
  validates_length_of :context_key, :allow_nil => false, :maximum => 100
  validates_presence_of :context_name
  validates_length_of :context_name, :allow_nil => false, :maximum => 100
end
