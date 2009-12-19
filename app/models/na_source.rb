class NaSource < ActiveRecord::Base
  validates_presence_of :feed_url
  validates_length_of :feed_url, :allow_nil => false, :maximum => 500
  validates_length_of :link, :allow_nil => true, :maximum => 500
  validates_length_of :title, :allow_nil => true, :maximum => 500
  validates_length_of :description, :allow_nil => true, :maximum => 500
  validates_numericality_of :updates, :allow_nil => true, :only_integer => true
  validates_length_of :last_modified, :allow_nil => true, :maximum => 100
  validates_inclusion_of :last_scan_ok_p, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_inclusion_of :listed_p, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
end
