class ProductsIndexTableSection < Prime::TableSection
  def table_data
    Product.all.map do |model|
      ProductsIndexCellSection.new(model: model)
    end
  end

  def on_click(table, index)
    section = data[index.row]
    screen.open_screen 'products#show', params: { model: section.model }
  end
end