require 'minitest/autorun'
require 'minitest/pride'
require './lib/exhibit'
require './lib/patron'

class ExhibitTest < Minitest::Test
  def test_it_exists_and_has_readable_attributes
    exhibit = Exhibit.new({name: "Gems and Minerals", cost: 0})

    assert_instance_of Exhibit, exhibit
    assert_equal "Gems and Minerals", exhibit.name
    assert_equal 0, exhibit.cost
  end
end
