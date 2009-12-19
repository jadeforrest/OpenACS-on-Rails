class FsRssSubscr < ActiveRecord::Base
  validates_presence_of :short_name
  validates_length_of :short_name, :allow_nil => false, :maximum => 80
  validates_presence_of :feed_title
  validates_length_of :feed_title, :allow_nil => false, :maximum => 200
  validates_presence_of :max_items
  validates_numericality_of :max_items, :allow_nil => false, :only_integer => true
  validates_inclusion_of :descend_p, :in => [true, false], :allow_nil => false, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_inclusion_of :include_revisions_p, :in => [true, false], :allow_nil => false, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_length_of :enclosure_match_patterns, :allow_nil => true, :maximum => 200
end
