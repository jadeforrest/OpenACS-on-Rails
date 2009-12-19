class AmMeetingTodo < ActiveRecord::Base
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 200
  validates_presence_of :assignee
  validates_numericality_of :assignee, :allow_nil => false, :only_integer => true
  validates_length_of :completed_p, :allow_nil => true, :maximum => 1
end
