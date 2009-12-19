class SecSessionProperty < ActiveRecord::Base
  validates_presence_of :module
  validates_length_of :module, :allow_nil => false, :maximum => 50
  validates_presence_of :property_name
  validates_length_of :property_name, :allow_nil => false, :maximum => 50
  validates_inclusion_of :secure_p, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_presence_of :last_hit
  validates_numericality_of :last_hit, :allow_nil => false, :only_integer => true
end
