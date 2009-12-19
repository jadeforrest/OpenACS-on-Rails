class CrTypeTemplateMap < ActiveRecord::Base
  validates_presence_of :content_type
  validates_length_of :content_type, :allow_nil => false, :maximum => 100
  validates_presence_of :use_context
  validates_length_of :use_context, :allow_nil => false, :maximum => 100
  validates_inclusion_of :is_default, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
end
