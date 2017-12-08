require 'pry'

class CashRegister
attr_accessor :total, :discount, :last_transaction
@@list_of_items = []

  def initialize(discount=0)
    @total = total
    @discount = discount
    @total = 0
  end

  def total
    @total
  end

  def add_item(title,price,quantity=1)
    @@list_of_items << title
    @total = @total + (price*quantity)
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."

    else
      @discount = @discount/100
      @total = @total*@discount
      return "After the discount, the total comes to #{total}."
    end
  end

  def items
    @@list_of_items
  end

  def void_last_transaction
  end


end
