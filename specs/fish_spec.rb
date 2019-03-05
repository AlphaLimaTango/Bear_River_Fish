require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')

class TestFish < MiniTest::Test

  def setup
    @fish1 = Fish.new("Iqbal")
    @fish2 = Fish.new("Amal")
    @fish3 = Fish.new("Bilal")
  end

  def test_check_if_fish_class_works
    assert_equal(Fish, @fish1.class)
  end

  def test_does_fish_have_name
    assert_equal("Iqbal", @fish1.name)
  end

end
