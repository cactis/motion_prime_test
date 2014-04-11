class MailsIndexTableSection < Prime::TableSection
  def table_data
    Mail.all.map do |model|
      MailsIndexCellSection.new(model: model)
    end
  end

  def on_click(table, index)
    section = data[index.row]
    screen.open_screen 'mails#show', params: { model: section.model }
  end
end