class Party < ActiveRecord::Base
  validates_length_of :email, :allow_nil => true, :maximum => 100
  validates_length_of :url, :allow_nil => true, :maximum => 200
end
