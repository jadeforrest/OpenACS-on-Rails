class GeneralComment < ActiveRecord::Base
  validates_length_of :category, :allow_nil => true, :maximum => 1000
end
