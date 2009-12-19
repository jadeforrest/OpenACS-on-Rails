class WebloggerTechnoratiCache < ActiveRecord::Base
  validates_length_of :name, :allow_nil => true, :maximum => 500
  validates_length_of :url, :allow_nil => true, :maximum => 500
end
