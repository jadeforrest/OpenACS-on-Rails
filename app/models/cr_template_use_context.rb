class CrTemplateUseContext < ActiveRecord::Base
  validates_presence_of :use_context
  validates_length_of :use_context, :allow_nil => false, :maximum => 100
end
