require 'test_helper'

class ForumsMessageTest < ActiveSupport::TestCase

  #        set var_list [list \
  #             [list forum_id $forum_id] \
  #             [list message_id $message_id] \
  #             [list parent_id $parent_id] \
  #             [list subject $subject] \
  #             [list content $content] \
  #             [list format $format] \
  #             [list user_id $user_id]]
  
  def test_save_message
    forum = ForumsForum.new(:name => 'Test forum', \
                            :charter => 'Test charter', \
                            :presentation_type => 'abc', \
                            :posting_policy => 'abc', \
                            :enabled_p => 'f')
    forum.save


    user = User.new(:priv_name => 'test', \
                    :priv_email => '123', \
                    :email_bouncing_p => 'false', \
                    :n_sessions => '0', \
                    :username => 'testuser')
    message = ForumsMessage.new(:forum_id => forum.forum_id, \
                                :subject => 'Test message', \
                                :content => 'Delete this', \
                                :format => 'text/plain', \
                                :user_id => user.user_id )
    ForumsMessage.transaction do
      user.save
      message.save 
    end
  end


end
