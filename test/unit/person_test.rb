require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  def test_full_name
    p = Person.new(:first_names => 'Jade', :last_name => 'Rubick')
    # want to make sure we never show last name
    assert p.full_name == "Jade R"
  end
end
