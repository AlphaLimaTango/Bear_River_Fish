require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../fish')
require_relative('../river')

class TestBear < MiniTest::Test

  def setup
    @bear1 = Bear.new("Yogi", "Grizzly")

    @river = River.new("Nile")

    @fish1 = Fish.new("Iqbal")
    @fish2 = Fish.new("Amal")
    @fish3 = Fish.new("Bilal")

    @river.add_fish_to_stock(@fish1)
    @river.add_fish_to_stock(@fish2)
    @river.add_fish_to_stock(@fish3)
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
    @bear1.go_fishing(@river)
    assert_equal(2, @river.count_stock)
    assert_equal(1, @bear1.stomach_state_count)
  end

  def test_do_the_roar
    @bear1.do_the_roar
    assert_equal("Roar!", @bear1.do_the_roar)
  end

end
