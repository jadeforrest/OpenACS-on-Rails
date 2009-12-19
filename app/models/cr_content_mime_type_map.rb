class CrContentMimeTypeMap < ActiveRecord::Base
  validates_presence_of :content_type
  validates_length_of :content_type, :allow_nil => false, :maximum => 100
  validates_presence_of :mime_type
  validates_length_of :mime_type, :allow_nil => false, :maximum => 200
end
