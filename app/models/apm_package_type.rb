class ApmPackageType < ActiveRecord::Base
  validates_presence_of :package_key
  validates_length_of :package_key, :allow_nil => false, :maximum => 100
  validates_presence_of :pretty_name
  validates_length_of :pretty_name, :allow_nil => false, :maximum => 100
  validates_length_of :pretty_plural, :allow_nil => true, :maximum => 100
  validates_presence_of :package_uri
  validates_length_of :package_uri, :allow_nil => false, :maximum => 1500
  validates_length_of :package_type, :allow_nil => true, :maximum => 300
  validates_length_of :spec_file_path, :allow_nil => true, :maximum => 1500
  validates_numericality_of :spec_file_mtime, :allow_nil => true, :only_integer => true
  validates_inclusion_of :initial_install_p, :in => [true, false], :allow_nil => false, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_inclusion_of :singleton_p, :in => [true, false], :allow_nil => false, :message => ActiveRecord::Errors.default_error_messages[:blank]
end
