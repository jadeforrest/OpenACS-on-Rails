class DownloadRevisionDatum < ActiveRecord::Base
  validates_inclusion_of :boolean_answer, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_numericality_of :number_answer, :allow_nil => true
end
