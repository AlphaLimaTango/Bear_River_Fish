require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../fish')

class TestBear < MiniTest::Test

  def setup
    @bear1 = Bear.new("Yogi", "Grizzly")

    @fish1 = Fish.new("Iqbal")
    @fish2 = Fish.new("Amal")
    @fish3 = Fish.new("Bilal")
  end

  def test_does_bear_class_exist
    assert_equal(Bear, @bear1.class)
  end

  def test_does_bear_have_name
    assert_equal("Yogi", @bear1.name)
  end

  def test_what_is_bear_type
    assert_equal("Grizzly", @bear1.type)
  end

  def test_bear_starting_stomach_state
    assert_equal(0, @bear1.stomach_state_count)
  end

  def test_bear_goes_fishing
    @bear1.stomach_state_count

    assert_equal(0, @bear1.stomach_state_count)

    @bear1.go_fishing(@fish1)

    assert_equal("I just ate #{@fish1}! Yum.", @bear1.is_fish_defo_in_belly(@fish1))
  end

  def test_do_the_roar
    @bear1.do_the_roar
    assert_equal("Roar!", @bear1.do_the_roar)
  end

  def test_count_food_in_belly
    @bear1.go_fishing(@fish1)
    @bear1.go_fishing(@fish2)
    assert_equal(2, @bear1.stomach_state_count)
  end

end
