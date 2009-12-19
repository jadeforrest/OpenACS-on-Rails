class JournalEntry < ActiveRecord::Base
  validates_length_of :action, :allow_nil => true, :maximum => 100
end
