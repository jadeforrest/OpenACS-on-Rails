class CrFolderTypeMap < ActiveRecord::Base
  validates_presence_of :content_type
  validates_length_of :content_type, :allow_nil => false, :maximum => 100
end
