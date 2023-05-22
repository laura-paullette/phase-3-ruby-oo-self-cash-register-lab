
    class CashRegister
        attr_accessor :total, :discount, :last_transaction, :items
    
        def initialize(discount = 0)
            @discount = discount
            @total = 0
            @items = []
            @last_transaction = nil
        end
    
        def add_item(title, price, quantity = 1)
            self.total += price * quantity
            quantity.times { @items << title }
            self.last_transaction = price * quantity
        end
    
        def apply_discount
            if @discount > 0
                self.total -= @total * @discount / 100
                "After the discount, the total comes to $#{@total}."
            else
                "There is no discount to apply."
            end
        end
    
        def void_last_transaction
            self.total -= last_transaction
            self.last_transaction = nil
        end
    
    end

