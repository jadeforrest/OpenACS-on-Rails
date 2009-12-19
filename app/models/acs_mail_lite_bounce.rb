class AcsMailLiteBounce < ActiveRecord::Base
  validates_numericality_of :bounce_count, :allow_nil => true, :only_integer => true
end
