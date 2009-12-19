class AcsMessage < ActiveRecord::Base
  validates_numericality_of :reply_to, :allow_nil => true, :only_integer => true
  validates_presence_of :sent_date
  validates_numericality_of :sender, :allow_nil => true, :only_integer => true
end
