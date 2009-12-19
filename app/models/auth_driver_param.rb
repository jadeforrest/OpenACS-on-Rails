class AuthDriverParam < ActiveRecord::Base
  validates_presence_of :key
  validates_length_of :key, :allow_nil => false, :maximum => 200
end
