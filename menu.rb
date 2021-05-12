require_relative './menu_item'

class Menu
    def initialize
        @menu_items = []
    end

    def add_item(name, price)
        menu_item = MenuItem.new(name, price)
        @menu_items << menu_item
    end

    def get_price(name)
        item = @menu_items.find { |menu_item| menu_item.name === name }
        item.price
    end

    def get_items()
        @menu_items
    end

    def display
        menu_title = "MENU"
        spacing = MenuItem::MENU_LIST_SPACING
        puts "\n"
        puts "=" * spacing
        puts "MENU".center(spacing, " ")
        puts "=" * spacing
        @menu_items.each { |item| puts item }
        nil
    end
end