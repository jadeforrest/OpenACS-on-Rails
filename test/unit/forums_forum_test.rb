require 'test_helper'

class ForumsForumTest < ActiveSupport::TestCase

  def test_should_not_save_without_name
    forum = ForumsForum.new
    assert !forum.save
  end


end
