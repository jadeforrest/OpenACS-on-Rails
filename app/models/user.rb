require 'digest/md5'

class User < ActiveRecord::Base
  # attr_accessor :first_names, :last_name

  set_primary_key :user_id
  set_table_name :users

  validates_confirmation_of :password, :on => :create

  has_many :forum_messages, :class_name =>ForumsMessage, \
  :foreign_key => "user_id"

  belongs_to :person, :foreign_key => "user_id"

  validates_length_of :password, :allow_nil => true, :is => 40
  validates_length_of :salt, :allow_nil => true, :maximum => 40
  validates_length_of :screen_name, :allow_nil => true, :maximum => 100
  validates_presence_of :priv_name
  validates_numericality_of :priv_name, :allow_nil => false, :only_integer => true
  validates_presence_of :priv_email
  validates_numericality_of :priv_email, :allow_nil => false, :only_integer => true
  validates_inclusion_of :email_verified_p, :in => [true, false], :allow_nil => true, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_inclusion_of :email_bouncing_p, :in => [true, false], :allow_nil => false, :message => ActiveRecord::Errors.default_error_messages[:blank]
  validates_presence_of :n_sessions
  validates_numericality_of :n_sessions, :allow_nil => false, :only_integer => true
  validates_length_of :password_question, :allow_nil => true, :maximum => 1000
  validates_length_of :password_answer, :allow_nil => true, :maximum => 1000
  validates_presence_of :username
  validates_length_of :username, :allow_nil => false, :maximum => 100
  validates_length_of :auth_token, :allow_nil => true, :maximum => 100

  def full_name
    person.full_name
  end

  # todo: better refactor to use rest based
  # http://media.railscasts.com/videos/021_super_simple_authentication.mov
  def self.authenticate(username, password)
    find_by_username_and_password(username, User.md5_upper(password))
  end

  private

  def self.md5_upper(password)
    Digest::MD5.hexdigest(password).upcase 
  end

end
