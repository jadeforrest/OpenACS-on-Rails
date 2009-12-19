class CrFolder < ActiveRecord::Base
  validates_length_of :label, :allow_nil => true, :maximum => 1000
  validates_inclusion_of :has_child_folders, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_inclusion_of :has_child_symlinks, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
end
