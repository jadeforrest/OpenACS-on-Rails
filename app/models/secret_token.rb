class SecretToken < ActiveRecord::Base
  validates_length_of :token, :allow_nil => true, :maximum => 40
end
