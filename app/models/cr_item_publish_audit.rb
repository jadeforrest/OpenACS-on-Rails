class CrItemPublishAudit < ActiveRecord::Base
  validates_numericality_of :old_revision, :allow_nil => true, :only_integer => true
  validates_numericality_of :new_revision, :allow_nil => true, :only_integer => true
  validates_length_of :old_status, :allow_nil => true, :maximum => 40
  validates_length_of :new_status, :allow_nil => true, :maximum => 40
  validates_presence_of :publish_date
end
