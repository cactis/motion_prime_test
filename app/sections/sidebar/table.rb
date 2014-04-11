class SidebarTableSection < Prime::TableSection
  def sidebar_items
    [
      {title: 'Home', action: :open_home, icon: :ui_icon_home },
      {title: 'Mail', action: :open_mails, icon: :ui_icon_pencil},
      {title: 'Posts', action: :open_posts, icon: :ui_icon_pencil },
      {title: 'Tasks', action: :open_tasks, icon: :ui_icon_pencil },
      {title: 'Basic form', action: :open_basic_form, icon: :ui_icon_settings },
      {title: 'Columns', action: :open_columns, icon: :ui_icon_book },
      {title: 'Icons', action: :open_icons, icon: :ui_icon_star }
    ]
  end

  def table_data
    sidebar_items.map do |model|
      SidebarActionSection.new(model: model)
    end
  end

  def on_click(table, index)
    section = data[index.row]
    return false if !section || !section.model[:action]
    screen.send section.model[:action].to_sym
  end
end
