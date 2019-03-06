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

  def go_fishing(river)
    @stomach_state << river.lose_fish()
  end

  def do_the_roar
    return "Roar!"
  end


end
