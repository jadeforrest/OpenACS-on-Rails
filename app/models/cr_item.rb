class CrItem < ActiveRecord::Base
  validates_presence_of :name
  validates_length_of :name, :allow_nil => false, :maximum => 400
  validates_length_of :locale, :allow_nil => true, :maximum => 4
  validates_numericality_of :live_revision, :allow_nil => true, :only_integer => true
  validates_numericality_of :latest_revision, :allow_nil => true, :only_integer => true
  validates_length_of :publish_status, :allow_nil => true, :maximum => 40
  validates_length_of :content_type, :allow_nil => true, :maximum => 100
  validates_presence_of :storage_type
  validates_length_of :storage_type, :allow_nil => false, :maximum => 10
  validates_presence_of :storage_area_key
  validates_length_of :storage_area_key, :allow_nil => false, :maximum => 100
  validates_presence_of :tree_sortkey
end
