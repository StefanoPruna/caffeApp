class MenuItem
    attr_reader :price, :name

    def initialize(name, price)
        @name = name
        @price = price
    end

    #instead of creating a method/function, we added the attribute
    # def price
    #     return @price
    # end
end