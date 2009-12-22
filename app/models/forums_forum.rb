class ForumsForum < ActiveRecord::Base
  set_primary_key :forum_id
  set_sequence_name 't_acs_object_id_seq'

  has_many :forums_messages, :class_name => "ForumsMessage"

  validates_presence_of :name
  validates_length_of :name, :allow_nil => false, :maximum => 200
  validates_length_of :charter, :allow_nil => true, :maximum => 2000
  validates_presence_of :presentation_type
  validates_length_of :presentation_type, :allow_nil => false, :maximum => 100
  validates_presence_of :posting_policy
  validates_length_of :posting_policy, :allow_nil => false, :maximum => 100
  validates_presence_of :enabled_p
  validates_length_of :enabled_p, :allow_nil => false, :maximum => 1
  validates_numericality_of :thread_count, :allow_nil => true, :only_integer => true
  validates_numericality_of :approved_thread_count, :allow_nil => true, :only_integer => true
end
