require_relative "./menu"
require_relative "./order"

class Bar
    attr_reader :name, :menu

    def initialize(name, menu_items)
        @name = name
        @menu = Menu.new
        populateMenu(menu_items)
        @order = Order.new
    end

    def populateMenu(menu_items)
        menu_items.each do |name, price|
            @menu.add_item(name, price) #called from menu.rb
        end
    end

    def addToOrder(item, quantity)
        @order.add_item(item, quantity)
    end

    def getOrder
        return @order
    end

    def welcome
        puts "Welcome to #{@name}!"
    end

    def printMenu
        @menu.display
    end
end

name = "Loske's bar"
menuItems = {caffelatte: 2.00, espresso: 1.00}
bar = Bar.new(name, menuItems)
bar.welcome
bar.printMenu