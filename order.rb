# require_relative "./menu_item"

class Order
    def initialize
        @order_items = Hash.new(0) #how to initialize a hash instead of = {}
    end

    def add_item(name, quantity)
        @order_items[name] += quantity
    end

    def get_items
        return @order_items
    end
end