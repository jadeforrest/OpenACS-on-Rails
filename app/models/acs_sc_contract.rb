class AcsScContract < ActiveRecord::Base
  validates_presence_of :contract_name
  validates_length_of :contract_name, :allow_nil => false, :maximum => 1000
  validates_presence_of :contract_desc
end
