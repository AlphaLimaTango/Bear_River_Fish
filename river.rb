class River
  attr_reader :name, :stock

  def initialize(name, stock)
    @name = name
    @stock = [@fish1, @fish2, @fish3] #why do I need to define here?
  end

  def add_fish_to_stock(fish)
    return @stock << fish
  end

  def count_stock
    @stock.count
  end

  def lose_fish(fish_name)
    for fish in @stock
      if fish == fish_name
        @stock.delete(fish_name)
      end
    end
  end




end
