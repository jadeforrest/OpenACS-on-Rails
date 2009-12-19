class DownloadMetadataChoice < ActiveRecord::Base
  validates_presence_of :label
  validates_length_of :label, :allow_nil => false, :maximum => 500
  validates_numericality_of :numeric_value, :allow_nil => true
  validates_numericality_of :sort_order, :allow_nil => true, :only_integer => true
end
