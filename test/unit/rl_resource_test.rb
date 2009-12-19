require 'test_helper'

class RlResourceTest < ActiveSupport::TestCase
  def test_counting_resources
    assert_equal(RlResource.resources_count, RlResource.count)
  end

end
