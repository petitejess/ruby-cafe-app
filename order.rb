class Order
    def initialize
        @order_items = Hash.new(0)  # A trick to create hash with default 0 as key, so can add value to already recorded key AND create key if none exist previously
    end

    def add_item(name, quantity)
        @order_items[name] += quantity
    end

    def get_items
        @order_items
    end
end