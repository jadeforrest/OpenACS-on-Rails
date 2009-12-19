class TtlStatu < ActiveRecord::Base
  validates_presence_of :status
  validates_length_of :status, :allow_nil => false, :maximum => 20
  validates_presence_of :status_name
  validates_length_of :status_name, :allow_nil => false, :maximum => 100
  validates_numericality_of :sort_key, :allow_nil => true, :only_integer => true
end
