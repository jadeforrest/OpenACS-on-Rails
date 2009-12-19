class AcsObjectType < ActiveRecord::Base
  validates_presence_of :object_type
  validates_length_of :object_type, :allow_nil => false, :maximum => 100
  validates_length_of :supertype, :allow_nil => true, :maximum => 100
  validates_inclusion_of :abstract_p, :in => [true, false], :allow_nil => false, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_presence_of :pretty_name
  validates_length_of :pretty_name, :allow_nil => false, :maximum => 100
  validates_presence_of :pretty_plural
  validates_length_of :pretty_plural, :allow_nil => false, :maximum => 100
  validates_presence_of :table_name
  validates_length_of :table_name, :allow_nil => false, :maximum => 30
  validates_presence_of :id_column
  validates_length_of :id_column, :allow_nil => false, :maximum => 30
  validates_presence_of :package_name
  validates_length_of :package_name, :allow_nil => false, :maximum => 30
  validates_length_of :name_method, :allow_nil => true, :maximum => 100
  validates_length_of :type_extension_table, :allow_nil => true, :maximum => 30
  validates_inclusion_of :dynamic_p, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
end
