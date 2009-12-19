class NaWeblog < ActiveRecord::Base
  validates_presence_of :weblog_name
  validates_length_of :weblog_name, :allow_nil => false, :maximum => 100
  validates_presence_of :blog_type
  validates_length_of :blog_type, :allow_nil => false, :maximum => 100
  validates_presence_of :base_url
  validates_length_of :base_url, :allow_nil => false, :maximum => 500
  validates_length_of :server, :allow_nil => true, :maximum => 500
  validates_numericality_of :port, :allow_nil => true, :only_integer => true
  validates_length_of :path, :allow_nil => true, :maximum => 100
  validates_numericality_of :blogid, :allow_nil => true, :only_integer => true
  validates_length_of :username, :allow_nil => true, :maximum => 200
  validates_length_of :password, :allow_nil => true, :maximum => 200
end
