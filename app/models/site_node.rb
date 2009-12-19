class SiteNode < ActiveRecord::Base
  validates_length_of :name, :allow_nil => true, :maximum => 100
  validates_inclusion_of :directory_p, :in => [true, false], :allow_nil => false, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_inclusion_of :pattern_p, :in => [true, false], :allow_nil => false, :message => ActiveRecord::Errors.default_error_messages[:blank]
end
