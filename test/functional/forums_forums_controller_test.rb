require 'test_helper'

class ForumsForumsControllerTest < ActionController::TestCase
  # Replace this with your real tests.
  def test_reponds_to_index
    get :index
    assert_response :success
    assert_not_nil assigns(:forums)
  end

  def test_should_route_to_forums
    assert_routing '/forums', { \
      :controller => "forums_forums", \
      :action => "index" }
  end

  def test_should_route_to_one_forum
    assert_routing '/forums/1', { \
      :controller => "forums_forums", \
      :action => "show", \
      :id => "1" }
  end

end
