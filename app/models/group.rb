class Group < ActiveRecord::Base
  validates_presence_of :group_name
  validates_length_of :group_name, :allow_nil => false, :maximum => 100
  validates_presence_of :join_policy
  validates_length_of :join_policy, :allow_nil => false, :maximum => 30
end
