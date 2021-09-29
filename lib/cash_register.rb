class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(name, price, quantity=1)
        self.last_transaction = price * quantity
        self.total += self.last_transaction
        self.items << name
    end
end