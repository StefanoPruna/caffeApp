require_relative "./menu_item"

class Menu
    #attr_accessor :get_items, :menu_items

    def initialize
        @menu_items = []
    end

    def add_item(name, price)
        menu_item = MenuItem.new(name, price)
        @menu_items << menu_item #push the element into the array
    end

    def getPrice(name)
        item = @menu_items.find {|menu_item| menu_item.name == name}
        return item.price
    end

    def get_items
        return @menu_items
    end
end