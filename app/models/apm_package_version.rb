class ApmPackageVersion < ActiveRecord::Base
  validates_presence_of :package_key
  validates_length_of :package_key, :allow_nil => false, :maximum => 100
  validates_presence_of :version_name
  validates_length_of :version_name, :allow_nil => false, :maximum => 100
  validates_presence_of :version_uri
  validates_length_of :version_uri, :allow_nil => false, :maximum => 1500
  validates_length_of :summary, :allow_nil => true, :maximum => 3000
  validates_length_of :description_format, :allow_nil => true, :maximum => 100
  validates_length_of :vendor, :allow_nil => true, :maximum => 500
  validates_length_of :vendor_uri, :allow_nil => true, :maximum => 1500
  validates_inclusion_of :enabled_p, :in => [true, false], :allow_nil => false, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_inclusion_of :installed_p, :in => [true, false], :allow_nil => false, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_inclusion_of :tagged_p, :in => [true, false], :allow_nil => false, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_inclusion_of :imported_p, :in => [true, false], :allow_nil => false, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_inclusion_of :data_model_loaded_p, :in => [true, false], :allow_nil => false, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_numericality_of :content_length, :allow_nil => true, :only_integer => true
  validates_length_of :distribution_uri, :allow_nil => true, :maximum => 1500
  validates_length_of :auto_mount, :allow_nil => true, :maximum => 50
end
