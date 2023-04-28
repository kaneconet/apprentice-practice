
class VendingMachine
  def initialize(maker_name)
    @maker_name = maker_name
  end

  def press_manufacturer_name
    @maker_name
  end

end
vending_machine = VendingMachine.new('サントリー')
puts vending_machine.press_manufacturer_name
