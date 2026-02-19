class BoutiqueInventory
  attr_reader :items

  def initialize(items)
    @items = items.map { |item| build_item(item) }
  end

  def item_names
    items.map { |item| item.name }.sort
  end

  def total_stock
    items.sum do |item|
      item.quantity_by_size.values.sum
    end
  end

  private

  def build_item(item)
    OpenStruct.new(
    name: item.fetch(:name),
    price: item.fetch(:price),
    quantity_by_size: item.fetch(:quantity_by_size, {})
  )
  end
end
