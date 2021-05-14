#testing
require_relative "../menu_item"
require_relative "../menu"
require_relative "../order"
require_relative "../caffe"

describe MenuItem do
    it "Should return the price of the item" do
        name = "caffelatte"
        price = 2.00
        menu_item = MenuItem.new(name, price)
        expect(menu_item.price).to eq(price)
    end

    it "Should return the name of the item" do
        name = "caffelatte"
        price = 2.00
        menu_item = MenuItem.new(name, price)
        expect(menu_item.name).to eq(name)
    end
end

describe Menu do
    it "should be able to get an item price" do
        name = "caffelatte"
        price = 2.00
        menu = Menu.new
        menu.add_item(name, price)
        expect(menu.getPrice(name)).to eq(price)
    end

    it "should be able to add an item" do
        name = "caffelatte"
        price = 2.00
        menu = Menu.new
        menu.add_item(name, price)
        expect(menu.get_items().length).to be(1)
    end
end

describe Order do
    it "should add an item to the order" do
        order = Order.new
        name = "caffelatte"
        quantity = 2
        order.add_item(name, quantity)
        expect(order.get_items().length).to be(1)            
    end

    it "should update an item quantity" do
        order = Order.new
        name = "caffelatte"
        quantity = 2
        quantityAdded = 3
        order.add_item(name, quantity)
        order.add_item(name, quantityAdded)
        expect(order.get_items()[name]).to be(quantity+quantityAdded)            
    end
end

describe Bar do
    it "should create a bar with a name" do
        name = "Loske's bar"
        menu_items = {}
        bar = Bar.new(name, menu_items)
        expect(bar.name).to eq(name)
    end
    
    it "should create a bar with a menu" do
        name = "Loske's bar"
        menu_items = {caffelatte: 2.00, espresso: 1.00}
        bar = Bar.new(name, menu_items)
        expect(bar.menu.get_items.length).to be(2)
    end

    it "should add an item to the order" do
        name = "Loske's bar"
        menuItems = {caffelatte: 2.00, espresso: 1.00}
        bar = Bar.new(name, menuItems)
        item = "caffelatte"
        quantity = 1
        bar.addToOrder(item, quantity)
        expect(bar.getOrder().get_items().length).to be(1)
    end
    it "should define a welcome method" do
        name = "Loske's bar"
        menuItems = {caffelatte: 2.00, espresso: 1.00}
        bar = Bar.new(name, menuItems)
        expect(bar.welcome).to eq(nil)
    end
end