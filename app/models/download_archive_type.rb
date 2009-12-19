class DownloadArchiveType < ActiveRecord::Base
  validates_presence_of :pretty_name
  validates_length_of :pretty_name, :allow_nil => false, :maximum => 100
  validates_presence_of :description
  validates_length_of :description, :allow_nil => false, :maximum => 500
end
