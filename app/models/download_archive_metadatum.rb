class DownloadArchiveMetadatum < ActiveRecord::Base
  validates_presence_of :sort_key
  validates_numericality_of :sort_key, :allow_nil => false, :only_integer => true
  validates_presence_of :pretty_name
  validates_length_of :pretty_name, :allow_nil => false, :maximum => 100
  validates_length_of :data_type, :allow_nil => true, :maximum => 30
  validates_inclusion_of :required_p, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_inclusion_of :linked_p, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_inclusion_of :mainpage_p, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_inclusion_of :computed_p, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
end
