class AcsScImpl < ActiveRecord::Base
  validates_length_of :impl_name, :allow_nil => true, :maximum => 100
  validates_length_of :impl_owner_name, :allow_nil => true, :maximum => 1000
  validates_length_of :impl_contract_name, :allow_nil => true, :maximum => 1000
  validates_length_of :impl_pretty_name, :allow_nil => true, :maximum => 200
end
