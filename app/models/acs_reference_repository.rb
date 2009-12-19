class AcsReferenceRepository < ActiveRecord::Base
  validates_presence_of :table_name
  validates_length_of :table_name, :allow_nil => false, :maximum => 100
  validates_inclusion_of :internal_data_p, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_length_of :package_name, :allow_nil => true, :maximum => 100
  validates_length_of :source, :allow_nil => true, :maximum => 1000
  validates_length_of :source_url, :allow_nil => true, :maximum => 255
  validates_numericality_of :lob, :allow_nil => true, :only_integer => true
end
