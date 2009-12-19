class AcsMailMultipart < ActiveRecord::Base
  validates_presence_of :multipart_kind
  validates_length_of :multipart_kind, :allow_nil => false, :maximum => 120
end
