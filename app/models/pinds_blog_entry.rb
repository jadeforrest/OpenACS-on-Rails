class PindsBlogEntry < ActiveRecord::Base
  validates_length_of :title, :allow_nil => true, :maximum => 500
  validates_length_of :title_url, :allow_nil => true, :maximum => 500
  validates_length_of :content, :allow_nil => true, :maximum => 32000
  validates_presence_of :content_format
  validates_length_of :content_format, :allow_nil => false, :maximum => 50
  validates_length_of :draft_p, :allow_nil => true, :maximum => 1
  validates_length_of :deleted_p, :allow_nil => true, :maximum => 1
end
