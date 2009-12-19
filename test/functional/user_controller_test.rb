require 'test_helper'

class UserControllerTest < ActionController::TestCase
  test "password is lower case" do
    user = User.new(:password => "925BD03FBCA619D9CGC76A1F1823DA745B054561".downcase )
    assert !user.save
  end

  test "password is nil" do
    user = User.new(:password => nil )
    assert !user.save
  end

  test "md5 hash" do
    # assert User.authenticate( "john", "abc" ) == nil?
  end

end
