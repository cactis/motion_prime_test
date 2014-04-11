class PostsIndexTableSection < Prime::TableSection

  # def table_data
  #   sections = []
  #   sections << PostsIndexHeadSection.new
  #   Post.all.each do |model|
  #     sections << PostsIndexCellSection.new(model: model)
  #   end
  #   sections
  # end

  def table_data
    Post.all.map do |model|
      PostsIndexCellSection.new(model: model)
    end
  end

  def on_click(table, index)
    section = data[index.row]
    screen.open_screen 'posts#edit', params: { model: section.model }
  end
end
