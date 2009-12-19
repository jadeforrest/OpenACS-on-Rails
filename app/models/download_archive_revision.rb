class DownloadArchiveRevision < ActiveRecord::Base
  validates_inclusion_of :approved_p, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_numericality_of :approved_user, :allow_nil => true, :only_integer => true
  validates_presence_of :file_size
  validates_numericality_of :file_size, :allow_nil => false, :only_integer => true
end
