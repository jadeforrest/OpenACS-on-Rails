require 'test_helper'

class ForumsMessageTest < ActiveSupport::TestCase

  def test_save_message
    forum = ForumsForum.first
    user = Users.first
    message = ForumsMessage.new( :forum_id => forum.forum_id, \
                                 :subject => 'Test message', \
                                 :content => 'Delete this', \
                                 :format => 'text/plain', \
                                 :user_id => user.user_id )
    message.save 
    message.delete
  end


end
