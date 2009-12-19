require 'test_helper'

class StaticControllerTest < ActionController::TestCase

  test "responds to /help" do
    assert_routing '/help', { :controller => "static", :action => "help" }
  end

  test "responds to /speakers/" do
    assert_routing '/speakers', { :controller => "static", :action => "speakers" }
  end


end
