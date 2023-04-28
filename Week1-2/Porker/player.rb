class Player
  attr_reader :name, :cards

  def initialize(name)
    @name = name
    @cards = []
  end

  def draw(deck, num)
    @cards.concat(deck.draw(num))
  end
end
