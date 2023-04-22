# VendingMachiinクラスの定義
class VendingMachine
  def initialize(maker_name)
    @maker_name = maker_name
    @balance = 0
  end

  def deposit_coin(coin)
    if coin == 100
      @balance += coin
    end
  end

  def press_button
    if @balance >= 100
      @balance -= 100
      "cider"
    end
  end

  private
  def press_manufacturer_name
    @maker_name
  end
end


vending_machine = VendingMachine.new('サントリー')
puts vending_machine.press_button

vending_machine.deposit_coin(150)
puts vending_machine.press_button

vending_machine.deposit_coin(100)
puts vending_machine.press_button

# privateが機能していることをエラーで確認
puts vending_machine.press_manufacturer_name
