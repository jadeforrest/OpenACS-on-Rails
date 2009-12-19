class NotificationInterval < ActiveRecord::Base
  validates_presence_of :name
  validates_length_of :name, :allow_nil => false, :maximum => 200
  validates_presence_of :n_seconds
  validates_numericality_of :n_seconds, :allow_nil => false, :only_integer => true
end
