class CrNews < ActiveRecord::Base
  set_table_name :cr_news
  set_primary_key :news_id
  
  has_many :revisions, :class_name => "CrRevision", :foreign_key => "revision_id"

  validates_numericality_of :approval_user, :allow_nil => true, :only_integer => true
  validates_length_of :approval_ip, :allow_nil => true, :maximum => 50
  validates_length_of :lead, :allow_nil => true, :maximum => 4000

end
