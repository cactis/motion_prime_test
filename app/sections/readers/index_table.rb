class ReadersIndexTableSection < Prime::TableSection
  def table_data
    Reader.all.map do |model|
      ReadersIndexCellSection.new(model: model)
    end
  end

  def on_click(table, index)
    section = data[index.row]
    screen.open_screen 'readers#show', params: { model: section.model }
  end
end