class ApmPackageDbType < ActiveRecord::Base
  validates_presence_of :db_type_key
  validates_length_of :db_type_key, :allow_nil => false, :maximum => 50
  validates_presence_of :pretty_db_name
  validates_length_of :pretty_db_name, :allow_nil => false, :maximum => 200
end
