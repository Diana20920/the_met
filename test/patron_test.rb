require 'minitest/autorun'
require 'minitest/pride'
require './lib/exhibit'
require './lib/patron'

class PatronTest < Minitest::Test
  def test_it_exists_and_has_readable_attributes
    patron_1 = Patron.new("Bob", 20)

    assert_instance_of Patron, patron
    assert_equal "Bob", patron_1.name
  end

  def test_its_spending_money
    skip
    patron_1 = Patron.new("Bob", 20)

    assert_equal 20, patron_1.spending_money
  end

  def test_it_starts_with_no_interests
    skip
    patron_1 = Patron.new("Bob", 20)

    assert_equal [], patron_1.interests
  end

  def test_the_interests_can_be_added
    skip
    patron_1 = Patron.new("Bob", 20)

    patron_1.add_interest("Dead Sea Scrolls")
    patron_1.add_interest("Gems and Minerals")

    assert_equal ["Dead Sea Scrolls", "Gems and Minerals"], patron_1.interests
  end
end
