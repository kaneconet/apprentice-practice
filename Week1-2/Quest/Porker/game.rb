# ポーカーゲームのGameクラス
require_relative 'deck'
require_relative 'player'

class Game
  def initialize
    @deck = Deck.new
    @player = Player.new('あなた')
  end

  def play
    puts "ポーカーを開始します"
    @player.draw(@deck, 2)
    puts "あなたの引いたカードは#{@player.cards[0].to_s}です"
    puts "あなたの引いたカードは#{@player.cards[1].to_s}です"
  end
end

game = Game.new
game.play
