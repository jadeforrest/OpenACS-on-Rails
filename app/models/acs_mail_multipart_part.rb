class AcsMailMultipartPart < ActiveRecord::Base
  validates_length_of :mime_filename, :allow_nil => true, :maximum => 1000
  validates_length_of :mime_disposition, :allow_nil => true, :maximum => 1000
  validates_presence_of :sequence_number
  validates_numericality_of :sequence_number, :allow_nil => false, :only_integer => true
end
