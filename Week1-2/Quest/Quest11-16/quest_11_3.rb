class VendingMachine

  def initialize(manufacturer_name)
    @balance = 0
    @manufacturer_name = manufacturer_name
  end

  def press_button
    if @balance >= 100
      @balance -= 100
      puts "cider"
    else
      puts ""
    end
  end

  def deposit_coin(coin)
    if coin == 100
      @balance += coin
    end
  end

  # 外部から呼び出せないメソッド
  private
  def press_manufacturer_name

  end
end

vending_machine = VendingMachine.new('サントリー')
puts vending_machine.press_button

vending_machine.deposit_coin(150)
puts vending_machine.press_button

vending_machine.deposit_coin(100)
puts vending_machine.press_button

puts vending_machine.press_manufacturer_name
