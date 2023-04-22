class Card
  SUITS = %w(♠ ♥ ♦ ♣)
  RANKS = %w(A 2 3 4 5 6 7 8 9 10 J Q K)

  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end

  def to_s
    "#{@suit}の#{@rank}"
  end
end
