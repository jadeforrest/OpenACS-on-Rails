class AdTemplateSampleUser < ActiveRecord::Base
  validates_length_of :first_name, :allow_nil => true, :maximum => 20
  validates_length_of :last_name, :allow_nil => true, :maximum => 20
  validates_length_of :address1, :allow_nil => true, :maximum => 40
  validates_length_of :address2, :allow_nil => true, :maximum => 40
  validates_length_of :city, :allow_nil => true, :maximum => 40
  validates_length_of :state, :allow_nil => true, :maximum => 2
end
