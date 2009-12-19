class CrMimeType < ActiveRecord::Base
  validates_length_of :label, :allow_nil => true, :maximum => 200
  validates_presence_of :mime_type
  validates_length_of :mime_type, :allow_nil => false, :maximum => 200
  validates_length_of :file_extension, :allow_nil => true, :maximum => 200
end
