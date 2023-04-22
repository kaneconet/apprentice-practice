require_relative 'card'

# デッキのクラス 52枚のカードを保持し、シャッフルやカードを引く機能を持つ
class Deck
  SUITS = ["ハート", "ダイヤ", "クローバー", "スペード"]
  RANKS = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "A", "J", "Q", "K"]

  def initialize
    @cards = generate_deck.shuffle
  end

  def generate_deck
    deck = []
    SUITS.each do |suit|
      RANKS.each do |rank|
        deck << Card.new(suit, rank)
      end
    end
    deck
  end

  def draw
    @cards.pop
  end
end
