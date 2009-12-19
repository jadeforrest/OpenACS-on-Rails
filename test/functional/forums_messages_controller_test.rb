require 'test_helper'

class ForumsMessagesControllerTest < ActionController::TestCase

  def test_should_route_to_one_message
    assert_routing '/forums/1/messages/2', { \
      :controller => "forums_messages", \
      :action => "index"}
  end

  def test_should_route_to_one_message
    assert_routing '/forums/1/messages/2', { \
      :controller => "forums_messages", \
      :action => "show", \
      :id => "2", \
      :forums_forum_id => "1" }
  end

end
