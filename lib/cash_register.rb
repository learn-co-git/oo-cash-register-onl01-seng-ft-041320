class CashRegister

  attr_accessor :total, :items, :price, :discount


  @@total = []

  def initialize(discount=0)
    @total = 0.00
    @discount = discount
    @items = []
    @price = []
  end

  def add_item(title, price, quantity=1)
    quantity.times do @price << price end
    @total += price * quantity
    @@total << @total
    items(title, quantity)
  end

  def items(title='', quantity=0)
    if quantity == 0
      return @items
    end
    x = 1
    while x <= quantity
      @items << title
      x += 1
    end
     @items
  end

  def total
         sale = @total * (@discount * 0.01)
        @total = @total - sale
        return @total
      end

  def apply_discount
    if discount == 0
      return "There is no discount to apply."
    end
    puts "After the discount, the total comes to $#{total().to_i}."
    return total()
  end

  def void_last_transaction
    if @items.empty?
      return 0.0
    end
    @total = @total - @price[-1]
    @total
  end

end
