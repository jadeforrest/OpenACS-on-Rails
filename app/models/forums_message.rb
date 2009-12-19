class ForumsMessage < ActiveRecord::Base
  set_primary_key :message_id
  set_table_name :forums_messages
  set_sequence_name :t_acs_object_id_seq

  has_many :replies, :class_name => "ForumsMessage", :foreign_key => "parent_id"
  belongs_to :thread, :class_name => "ForumsMessage"

  belongs_to :forums_forum, :foreign_key => "forum_id"
  belongs_to :user, :foreign_key => "user_id"

  validates_length_of :subject, :allow_nil => true, :maximum => 200
  validates_presence_of :posting_date
  validates_length_of :state, :allow_nil => true, :maximum => 100
  validates_presence_of :open_p
  validates_length_of :open_p, :allow_nil => false, :maximum => 1
  validates_length_of :format, :allow_nil => true, :maximum => 30
  validates_numericality_of :reply_count, :allow_nil => true, :only_integer => true
  validates_numericality_of :approved_reply_count, :allow_nil => true, :only_integer => true
  validates_numericality_of :last_poster, :allow_nil => true, :only_integer => true

end
