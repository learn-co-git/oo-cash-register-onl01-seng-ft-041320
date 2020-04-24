class CashRegister

  attr_accessor :total, :items, :price, :discount


  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @prices = []
  end

  def add_item(title, price, quantity=1)
    sales = price * quantity
    @total += sales
    @prices << sales
    quantity.times do @items << title end
  end

  def apply_discount
    if discount > 0
      @total -= @total * (discount/100.0)
      puts "After the discount, the total comes to #{@total.to_i}."
    elsif discount == 0
      puts "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @prices.pop
  end

end
