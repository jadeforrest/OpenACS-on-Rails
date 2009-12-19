class AcsRelRole < ActiveRecord::Base
  validates_presence_of :role
  validates_length_of :role, :allow_nil => false, :maximum => 100
  validates_presence_of :pretty_name
  validates_length_of :pretty_name, :allow_nil => false, :maximum => 100
  validates_presence_of :pretty_plural
  validates_length_of :pretty_plural, :allow_nil => false, :maximum => 100
end
