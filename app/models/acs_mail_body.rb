class AcsMailBody < ActiveRecord::Base
  validates_numericality_of :body_reply_to, :allow_nil => true, :only_integer => true
  validates_numericality_of :body_from, :allow_nil => true, :only_integer => true
  validates_length_of :header_reply_to, :allow_nil => true, :maximum => 1000
end
