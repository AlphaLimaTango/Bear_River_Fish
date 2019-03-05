# Bears, River, Fish

We are going to build a small ecosystem! We want to create an ecosystem made up of 3 parts: bears, river and fish. You will need a class for each of these. From this you can make instances and build your ecosystem.

## How Our Ecosystem Works

- A river should have a name e.g. "Amazon" Y
- A river should hold many fish Y
- A fish should have a name Y

- A bear should have a name e.g. "Yogi" and a type e.g. "Grizzly" Y
- A bear should have an empty stomach ( maybe an array ) Y

- A bear should be able to take a fish from the river Y
- A river should lose a fish when a bear takes a fish Y

## Extensions

- A bear could have a roar method Y
- A bear could have a food_count method Y
- A river could have a fish_count method Y












require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../fish')

class TestRiver < MiniTest::Test

  def setup
    @river = River.new("Nile", [])

    @fish1 = Fish.new("Iqbal")
    @fish2 = Fish.new("Amal")
    @fish3 = Fish.new("Bilal")
    @fish4 = Fish.new("Hamima")
  end

  def test_does_river_exist
    assert_equal(River, @river.class())
  end

  def test_name_of_river
    assert_equal("Nile", @river.name())
  end

  def test_quantity_of_river_stock
    assert_equal(0, @river.count_stock)
    @river.add_fish_to_stock(@fish1)
    @river.add_fish_to_stock(@fish2)
    @river.add_fish_to_stock(@fish3)
    assert_equal(3, @river.count_stock)
  end

  def test_bear_has_stolen_fish_from_stock
    @river.add_fish_to_stock(@fish1)
    @river.add_fish_to_stock(@fish2)
    @river.add_fish_to_stock(@fish3)
    assert_equal(3, @river.count_stock)
    @river.lose_fish(@fish1)
    assert_equal(2, @river.count_stock)
  end


end
