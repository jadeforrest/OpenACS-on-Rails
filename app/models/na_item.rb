class NaItem < ActiveRecord::Base
  validates_length_of :link, :allow_nil => true, :maximum => 500
  validates_length_of :guid, :allow_nil => true, :maximum => 500
  validates_length_of :original_guid, :allow_nil => true, :maximum => 500
  validates_inclusion_of :permalink_p, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_length_of :title, :allow_nil => true, :maximum => 500
  validates_length_of :author, :allow_nil => true, :maximum => 100
  validates_length_of :comment_page, :allow_nil => true, :maximum => 200
end
