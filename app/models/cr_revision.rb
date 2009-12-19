class CrRevision < ActiveRecord::Base
  set_table_name :cr_revisions
  set_primary_key :revision_id

  belongs_to :news, :class_name => "CrNews"

  validates_length_of :title, :allow_nil => true, :maximum => 1000
  validates_length_of :mime_type, :allow_nil => true, :maximum => 200
  validates_length_of :nls_language, :allow_nil => true, :maximum => 50
  validates_numericality_of :lob, :allow_nil => true, :only_integer => true
  validates_numericality_of :content_length, :allow_nil => true, :only_integer => true
end
