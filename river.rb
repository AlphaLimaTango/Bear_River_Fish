class River
  attr_reader :name, :stock

  def initialize(name)
    @name = name
    @stock = [] #why do I need to define here?
  end

  def add_fish_to_stock(fish)
    return @stock << fish
  end

  def count_stock
    @stock.count
  end

  def lose_fish()
    return @stock.pop()
  end




end
