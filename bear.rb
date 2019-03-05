class Bear
  attr_reader :name, :type, :stomach_state

  def initialize(name, type)
    @name = name
    @type = type
    @stomach_state = []
  end

  def stomach_state_count
    @stomach_state.count
  end

  def go_fishing(fish)
    @stomach_state << fish
  end

  def do_the_roar
    return "Roar!"
  end

  def is_fish_defo_in_belly(fish_name)
    for fish in @stomach_state
      if fish == fish_name
        return "I just ate #{fish_name}! Yum."
      end
    end
  end


end
