class PartyApprovedMemberMap < ActiveRecord::Base
  validates_presence_of :tag
  validates_numericality_of :tag, :allow_nil => false, :only_integer => true
end
