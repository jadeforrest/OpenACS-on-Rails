class DownloadReason < ActiveRecord::Base
  validates_presence_of :reason
  validates_length_of :reason, :allow_nil => false, :maximum => 500
end
