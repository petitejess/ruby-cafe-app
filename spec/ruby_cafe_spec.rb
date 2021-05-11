require_relative '../menu_item'
require_relative '../menu'
require_relative '../order'
require_relative '../cafe'

describe MenuItem do
    it 'should return the price of the item' do
        name = "latte"
        price = 4.00
        menu_item = MenuItem.new(name, price)
        expect(menu_item.price).to eq(price)
    end
end

describe Menu do
    it 'should be able to add an item' do
        name = "latte"
        price = 4.00
        menu = Menu.new
        menu.add_item(name, price)
        expect(menu.get_price(name)).to eq(price)
    end
end