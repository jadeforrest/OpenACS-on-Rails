class WebloggerBlogrollEntry < ActiveRecord::Base
  validates_presence_of :name
  validates_length_of :name, :allow_nil => false, :maximum => 500
  validates_presence_of :url
  validates_length_of :url, :allow_nil => false, :maximum => 1000
  validates_numericality_of :sort_order, :allow_nil => true, :only_integer => true
end
