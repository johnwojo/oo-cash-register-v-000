require 'pry'

class CashRegister
attr_accessor :total, :discount, :last_transaction, :item

  def initialize(discount=0)
    @last_transaction = 0
    @total = total
    @discount = discount
    @total = 0
    @items = []
  end

  def total
    @total
  end

  def add_item(title,price,quantity=1)
    @last_transaction = @last_transaction + 1
    @total = @total + (price*quantity)
    quantity.times do
      @items << title
    end
  end


  def apply_discount
    if @discount == 0
      return "There is no discount to apply."

    else
      @discount = @discount.to_f/100
      @total = @total-(@total*@discount)
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def void_last_transaction
  end



end
