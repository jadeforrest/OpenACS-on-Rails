class CrExtensionMimeTypeMap < ActiveRecord::Base
  validates_presence_of :extension
  validates_length_of :extension, :allow_nil => false, :maximum => 200
  validates_length_of :mime_type, :allow_nil => true, :maximum => 200
end
