class AcsScImplAlias < ActiveRecord::Base
  validates_length_of :impl_name, :allow_nil => true, :maximum => 100
  validates_length_of :impl_contract_name, :allow_nil => true, :maximum => 1000
  validates_length_of :impl_operation_name, :allow_nil => true, :maximum => 100
  validates_length_of :impl_alias, :allow_nil => true, :maximum => 100
  validates_length_of :impl_pl, :allow_nil => true, :maximum => 100
end
