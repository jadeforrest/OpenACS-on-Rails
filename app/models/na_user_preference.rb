class NaUserPreference < ActiveRecord::Base
  validates_numericality_of :default_aggregator, :allow_nil => true, :only_integer => true
end
