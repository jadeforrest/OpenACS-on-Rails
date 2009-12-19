class AcsContent < ActiveRecord::Base
  validates_numericality_of :content, :allow_nil => true, :only_integer => true
  validates_inclusion_of :searchable_p, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_length_of :nls_language, :allow_nil => true, :maximum => 50
  validates_length_of :mime_type, :allow_nil => true, :maximum => 200
end
