require 'test_helper'

class ForumsMessagesControllerTest < ActionController::TestCase

  def test_should_route_to_one_message
    assert_routing '/messages', { \
      :controller => "forums_messages", \
      :action => "index"}
  end

  def test_should_route_to_one_message
    assert_routing '/messages/2', { \
      :controller => "forums_messages", \
      :action => "show", \
      :id => "2" }
  end

end
