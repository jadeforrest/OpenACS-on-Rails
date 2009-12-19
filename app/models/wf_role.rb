class WfRole < ActiveRecord::Base
  validates_presence_of :role_key
  validates_length_of :role_key, :allow_nil => false, :maximum => 100
  validates_presence_of :workflow_key
  validates_length_of :workflow_key, :allow_nil => false, :maximum => 100
  validates_presence_of :role_name
  validates_length_of :role_name, :allow_nil => false, :maximum => 100
  validates_numericality_of :sort_order, :allow_nil => true, :only_integer => true
end
