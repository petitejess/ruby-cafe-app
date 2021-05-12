class MenuItem
    attr_reader :name, :price

    MENU_LIST_SPACING = 50

    def initialize(name, price)
        @name = name
        @price = price
    end

    def to_s
        "#{@name} ".ljust(MENU_LIST_SPACING / 2) + "$#{sprintf("%.2f", @price)}".rjust(MENU_LIST_SPACING / 2)
    end
end