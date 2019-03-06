require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../fish')

class TestRiver < MiniTest::Test

  def setup
    @river = River.new("Nile")

    @fish1 = Fish.new("Iqbal")
    @fish2 = Fish.new("Amal")
    @fish3 = Fish.new("Bilal")
    @fish4 = Fish.new("Hamima")

    @river.add_fish_to_stock(@fish1)
    @river.add_fish_to_stock(@fish2)
    @river.add_fish_to_stock(@fish3)
  end

  def test_does_river_exist
    assert_equal(River, @river.class())
  end

  def test_name_of_river
    assert_equal("Nile", @river.name())
  end

  def test_quantity_of_river_stock
    assert_equal(3, @river.count_stock)
    @river.add_fish_to_stock(@fish4)
    assert_equal(4, @river.count_stock)
  end

  def test_bear_has_stolen_fish_from_stock

    assert_equal(3, @river.count_stock)
    fish = @river.lose_fish()
    assert_equal(2, @river.count_stock)
  end


end
