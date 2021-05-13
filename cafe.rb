require_relative './menu_item.rb'
require_relative './menu.rb'
require_relative './order.rb'

class Cafe
    attr_reader :name, :menu

    def initialize(name, menu_items)
        @name = name
        @menu = Menu.new
        populate_menu(menu_items)
        @order = Order.new
    end

    def populate_menu(menu_items)
        menu_items.each do |name, price|
            @menu.add_item(name, price)
        end
    end

    def add_to_order(item, quantity)
        @order.add_item(item, quantity)
    end

    def get_order
        @order
    end

    def welcome
        spacing = MenuItem::MENU_LIST_SPACING
        puts "\n"
        puts "Welcome to #{@name}!".center(spacing)
    end

    def print_menu
        spacing = MenuItem::MENU_LIST_SPACING
        @menu.display
        puts "=" * spacing
    end

    def order_total
        total = 0
        @order.get_items.each do |item, quantity|
            total += @menu.get_price(item) * quantity
        end
        return total
    end

    def print_order
        spacing = MenuItem::MENU_LIST_SPACING
        if order_total !=  0
            @order.display
            puts "-" * spacing
            puts "TOTAL:".ljust(spacing / 2) + "$#{sprintf("%.2f", order_total)}".rjust(spacing / 2)
        else
            puts
            puts "x" * spacing
            puts "Your order is empty.".center(spacing)
        end
        puts "=" * spacing
        puts
        puts "Thank you for coming!".center(spacing, " ")
    end
end