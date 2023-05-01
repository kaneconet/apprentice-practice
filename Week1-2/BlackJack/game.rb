# frozen_string_literal: true

require_relative "deck"
require_relative "player"

# ゲームクラスはゲームの進行を管理します
class Game
  def initialize
    @deck = Deck.new
    @player = Player.new
    @dealer = Player.new
  end

  def play
    initial_deal
    player_turn
    dealer_turn unless @player.total > 21
    show_result
  end

  private

  def initial_deal
    2.times do
      @player.draw_card(@deck.draw)
      @dealer.draw_card(@deck.draw)
    end

    puts "あなたの引いたカードは#{@player.hand[0].suit}の#{@player.hand[0].rank}です。"
    puts "あなたの引いたカードは#{@player.hand[1].suit}の#{@player.hand[1].rank}です。"
    puts "ディーラーの引いたカードは#{@dealer.hand[0].suit}の#{@dealer.hand[0].rank}です。"
    puts "ディーラーの引いた2枚目のカードはわかりません。"
  end

  def player_turn
    while @player.total < 21
      decision = nil # loop外でも参照するため初期化
      loop do
        puts "あなたの現在の得点は#{@player.total}です。カードを引きますか？（Y/N）"
        decision = gets.chomp
        if decision == "Y" || decision == "N"
          break
        else
          puts "入力された値が無効です。YかNを入力してください"
        end
      end

      break if decision == "N"

      @player.draw_card(@deck.draw)
      puts "あなたの引いたカードは#{@player.hand.last.suit}の#{@player.hand.last.rank}です。"
    end
  end

  def dealer_turn
    puts "ディーラーの引いた2枚目のカードは#{@dealer.hand[1].suit}の#{@dealer.hand[1].rank}でした。"
    while @dealer.total < 17
      @dealer.draw_card(@deck.draw)
      puts "ディーラーの現在の得点は#{@dealer.total}です。"
      puts "ディーラーの引いたカードは#{@dealer.hand.last.suit}の#{@dealer.hand.last.rank}です。"
    end
  end

  def show_result
    if @player.total > 21
      puts "あなたの得点は#{@player.total}です。あなたの負けです。"
    elsif @dealer.total > 21 || @player.total > @dealer.total
      puts "あなたの勝ちです！"
    elsif @player.total < @dealer.total
      puts "ディーラーの勝ちです！"
    else
      puts "引き分けです！"
    end
  end
end
